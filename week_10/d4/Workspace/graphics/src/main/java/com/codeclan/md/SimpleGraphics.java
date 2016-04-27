package com.codeclan.md;

import java.awt.BasicStroke;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class SimpleGraphics extends JPanel {

    private static final int HEIGHT = 300;
    private static final int WIDTH = 300;
    
    public static void main(String args[]) {
        JFrame frame = new JFrame("Graphics!");
        frame.setResizable(false);
        frame.setBackground(Color.WHITE);
        System.out.println("App started");
        
        // main
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        SimpleGraphics container = new SimpleGraphics();       
        container.setBackground(Color.GREEN);
        frame.setContentPane(container);
        frame.setPreferredSize(new Dimension(WIDTH, HEIGHT));
        
        frame.getContentPane().add(new JLabel("my first Graphics in Java"), BorderLayout.CENTER);
        
        frame.pack();
        frame.setVisible(true);
    }
	
    @Override
    public void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2 = (Graphics2D) g;
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        drawRectangle2(g2, Color.GREEN, Color.BLACK, 150, 150, 150);
        drawRectangle2(g2, Color.GREEN, Color.BLACK, 150, 150, 100);
        drawRectangle(g2, Color.GREEN, Color.BLACK, 150, 150, 50);
        drawSquare(g2, Color.GREEN, Color.BLACK, 150, 150, 25);
        drawLine(g2);
        drawLine2(g2);
        drawLine3(g2);
        drawLine4(g2);
        drawLine5(g2);
        drawLine6(g2);
        drawLine7(g2);
    }
    
    public void drawLine(Graphics surface) {
        surface.setColor(Color.BLACK);
        surface.drawLine(250, 50, 50, 250);
    }
    
    public void drawLine2(Graphics surface) {
        surface.setColor(Color.BLACK);
        surface.drawLine(250, 50, 250, 250);
    }
    
    public void drawLine3(Graphics surface) {
        surface.setColor(Color.BLACK);
        surface.drawLine(250, 250, 50, 250);
    }
    
    public void drawLine4(Graphics surface) {
        surface.setColor(Color.BLACK);
        surface.drawLine(50, 50, 250, 250);
    }
    
    public void drawLine5(Graphics surface) {
        surface.setColor(Color.BLACK);
        surface.drawLine(50, 50, 50, 250);
    }
    
    public void drawLine6(Graphics surface) {
        surface.setColor(Color.BLACK);
        surface.drawLine(50, 50, 250, 50);
    }
    
    public void drawLine7(Graphics surface) {
        surface.setColor(Color.BLACK);
        surface.drawLine(150, 150, 150, 150);
    }
    
    public void drawRectangle(Graphics surface, Color fillColour, Color borderColour, int startX, int startY, int size) {
        surface.setColor(fillColour);
        surface.fillRect(startX - size / 2, startY - size / 2, size, size);
        surface.setColor(borderColour);
        ((Graphics2D) surface).setStroke(new BasicStroke(3.0f));
        surface.drawRect(startX - size / 2, startY - size / 2, size, size);
    }
    
    public void drawRectangle2(Graphics surface, Color fillColour, Color borderColour, int startX, int startY, int size) {
        surface.setColor(fillColour);
        surface.fillRect(startX - size / 2, startY - size / 2, size, size);
        surface.setColor(borderColour);
        ((Graphics2D) surface).setStroke(new BasicStroke(3.0f));
        surface.drawRect(startX - size / 2, startY - size / 2, size, size);
    }
    
    public void drawRectangle3(Graphics surface, Color fillColour, Color borderColour, int startX, int startY, int size) {
        surface.setColor(fillColour);
        surface.fillRect(startX - size / 2, startY - size / 2, size, size);
        surface.setColor(borderColour);
        ((Graphics2D) surface).setStroke(new BasicStroke(3.0f));
        surface.drawRect(startX - size / 2, startY - size / 2, size, size);
    }
    
    public void drawSquare(Graphics surface, Color fillColour, Color borderColour, int startX, int startY, int size) {
        surface.setColor(fillColour);
        surface.fillRect(startX - size / 2, startY - size / 2, size, size);
        surface.setColor(borderColour);
        ((Graphics2D) surface).setStroke(new BasicStroke(3.0f));
        surface.drawRect(startX - size / 2, startY - size / 2, size, size);
    }
    
}