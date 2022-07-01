<%@ page import="java.awt.*" %>
<%@ page import="javax.swing.*" %>
<%@ page import="java.awt.event.ActionListener" %>
<%@ page import="java.awt.event.ActionEvent" %><%--
  Created by IntelliJ IDEA.
  User: 10794
  Date: 2022/5/13
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<style>
    #title{
        color: white;
    }
    body{
        background-color:#1ABC9C;
    }
</style>
<body>

<div style=" height: 50px;
        width: 100%;
        background-color: aliceblue;
        border: 1px black;">
    <%
        String username = (String) session.getAttribute("usernamedb");
        String Islogin = (String) session.getAttribute("Islogin");
    %>
    <h2 align="center" style="color: #1ABC9C" >状态：<%=Islogin%>  登录用户：<%=username%></h2>
</div>

<h3 id="title" align="center">欢迎使用计算器</h3>
<%!
    public class CalculatorDemo extends JFrame {

        int Key = 0;//三角函数key

        public CalculatorDemo() {
            super("计算器");
            this.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
            solve();
        }

        //字符串转化double方法
        public double toDouble(String s) {
            double n = 0;
            int l = s.length();
            char[] c = s.toCharArray();
            for (int i = 0; i < l; i++) {
                if (c[l - i - 1] != '.') {
                    n += (c[l - i - 1] - '0') * Math.pow(10, i);
                    //System.out.println("i="+i+" n="+n+" char="+c[i]);
                } else {
                    n /= Math.pow(10, i);
                    i++;
                    for (int j = 0; j < l - i; j++) {
                        n += (c[l - i - 1 - j] - '0') * Math.pow(10, j);
                        //System.out.println("i="+i+" n="+n+" j="+j+" char="+c[i+j]);
                    }
                    break;
                }
            }
            return n;
        }

        //阶乘方法
        public double factoria(double n) {
            int temp = (int) n;
            double ans = 1;
            for (int i = 1; i <= temp; i++) {
                ans *= i;
            }
            System.out.println(ans);
            return ans;
        }

        public void solve() {

            //总体布局以及文本区设置
            setLayout(new BorderLayout());
            JTextField jtf = new JFormattedTextField();
            jtf.setFont(new Font("微软雅黑", Font.ITALIC, 25));
            jtf.setPreferredSize(new Dimension(700, 50));
            jtf.setHorizontalAlignment(JTextField.RIGHT);//右对齐

            //按钮属性设置
            JPanel jp = new JPanel();
            jp.setLayout(new GridLayout(4, 3, 10, 10));
            JButton[] buttons = new JButton[24];
            String[] strings = {
                    "9", "8", "7", "÷", "sqrt", "!",
                    "6", "5", "4", "*", "sin", "1/x",
                    "3", "2", "1", "-", "cos", "delete",
                    "0", "+/-", ".", "+", "x^y", "="
            };
            for (int i = 0; i < 24; i++) {
                buttons[i] = new JButton(strings[i]);
                jp.add(buttons[i]);
                buttons[i].setFont(new Font("微软雅黑", Font.PLAIN, 20));
                buttons[i].setBorder(BorderFactory.createRaisedBevelBorder());

            }

            getContentPane().add(jtf, BorderLayout.NORTH);
            getContentPane().add(jp, BorderLayout.CENTER);

            //监听器实现
            buttons[0].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "9");
                }
            });

            buttons[1].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "8");
                }
            });

            buttons[2].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "7");
                }
            });

            buttons[3].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "÷");
                }
            });

            buttons[4].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "√");
                }
            });

            buttons[5].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "!");
                }
            });

            buttons[6].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "6");
                }
            });

            buttons[7].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "5");
                }
            });

            buttons[8].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "4");
                }
            });

            buttons[9].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "*");
                }
            });

            buttons[10].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Key = 1;
                    jtf.setText(jtf.getText() + "sin");
                }
            });

            buttons[11].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Key = 3;
                    jtf.setText("(" + jtf.getText() + ")^(-1)");
                }
            });

            buttons[12].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "3");
                }
            });

            buttons[13].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "2");
                }
            });

            buttons[14].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "1");
                }
            });

            buttons[15].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "-");
                }
            });

            buttons[16].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Key = 2;
                    jtf.setText(jtf.getText() + "cos");
                }
            });

            //delete
            buttons[17].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(null);
                }
            });

            buttons[18].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "0");
                }
            });

            buttons[19].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    if (jtf.getText().charAt(0) == '-')
                        jtf.setText(jtf.getText().substring(1));
                    else
                        jtf.setText("-" + jtf.getText());
                }
            });

            buttons[20].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + ".");
                }
            });

            buttons[21].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "+");
                }
            });

            buttons[22].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    jtf.setText(jtf.getText() + "^");
                }
            });

            buttons[23].addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    String str1 = jtf.getText();
                    char[] chars = str1.toCharArray();
                    int temp1 = 0, Flag = 0;

                    for (int i = 0; i < str1.length(); i++) {
                        if (Key == 1 || Key == 2) {
                            Flag = 1;
                            temp1 = i + 3;
                            break;
                        }
                        if (Key == 3) {
                            Flag = 1;
                            break;
                        }
                        if (chars[i] == '+' || chars[i] == '-' || chars[i] == '*' || chars[i] == '÷'
                                || chars[i] == '√' || chars[i] == '!' || chars[i] == '^'
                        ) {
                            Flag = 1;
                            temp1 = i;
                            break;
                        }
                    }

                    //System.out.println(Flag);

                    if (Flag == 1) {
                        String str2 = str1.substring(0, temp1);
                        String str3 = str1.substring(temp1 + 1);
                        if (chars[temp1] == '+') {
                            double ans = toDouble(str2) + toDouble(str3);
                            //System.out.println("temp="+temp1+" str2="+str2+" str3="+str3);
                            jtf.setText(jtf.getText() + "=" + ans);
                        } else if (chars[temp1] == '-') {
                            double ans = toDouble(str2) - toDouble(str3);
                            jtf.setText(jtf.getText() + "=" + ans);
                        } else if (chars[temp1] == '*') {
                            double ans = toDouble(str2) * toDouble(str3);
                            jtf.setText(jtf.getText() + "=" + ans);
                        } else if (chars[temp1] == '÷') {
                            double ans = toDouble(str2) / toDouble(str3);
                            jtf.setText(jtf.getText() + "=" + ans);
                        } else if (chars[temp1] == '√') {
                            double ans = Math.sqrt(toDouble(str3));
                            jtf.setText(jtf.getText() + "=" + ans);
                        } else if (chars[temp1] == '!') {
                            double ans = factoria(toDouble(str2));
                            jtf.setText(jtf.getText() + "=" + ans);
                        } else if (chars[temp1] == '^') {
                            double ans = Math.pow(toDouble(str2), toDouble(str3));
                            jtf.setText(jtf.getText() + "=" + ans);
                        } else if (Key == 1) {
                            double ans = Math.sin(toDouble(str3));
                            jtf.setText(jtf.getText() + "=" + ans);
                            Key = 0;
                        } else if (Key == 2) {
                            double ans = Math.cos(toDouble(str3));
                            jtf.setText(jtf.getText() + "=" + ans);
                            Key = 0;
                        } else if (Key == 3) {
                            String str4 = str1.substring(1, str1.length() - 6);
                            double ans = Math.pow(toDouble(str4), -1);
                            jtf.setText(jtf.getText() + "=" + ans);
                            Key = 0;
                        }
                    }

                }
            });

        }
    }
%>
<%
            CalculatorDemo test = new CalculatorDemo();
            test.setSize(700,500);
            test.setBackground(Color.lightGray);
            test.setVisible(true);
            test.setLocationRelativeTo(null);
%>
</body>
</html>
