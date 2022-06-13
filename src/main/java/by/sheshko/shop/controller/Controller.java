package by.sheshko.shop.controller;

import by.sheshko.shop.controller.command.Command;
import by.sheshko.shop.controller.command.CommandName;
import by.sheshko.shop.controller.exception.ControllerException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class Controller extends HttpServlet {
    private static final long serialVersionUID = 4296569594467128804L;
    private final CommandProvider provider = new CommandProvider();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        CommandName commandName = CommandName.valueOf(request.getParameter("command").toUpperCase());
        Command command = provider.getCommand(String.valueOf(commandName));

        String name = (String) session.getAttribute("name");

        if (name == null) {
            session.setAttribute("name", "Anonymous");
        }

        out.println("Name: " + name + "<br>");

        switch (commandName) {
            case SIGN_IN:
            case REGISTRATION:
                try {
                    out.println(command.execute(login + " " + password));
                    session.setAttribute("name", login);

                    command = provider.getCommand("USER_INFO");
                    out.println("<br>" + command.execute(login));
                } catch (ControllerException e) {
                    out.println(e.getMessage());
                    System.out.println(e + "\n");
                }
                break;
            case SIGN_OUT:
                session.removeAttribute("name");
            default:
                try {
                    out.println(command.execute("Wrong request"));
                } catch (ControllerException e) {
                    out.println(response);
                    System.out.println(e + "\n");
                }
        }
    }
}
