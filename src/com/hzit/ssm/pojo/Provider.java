package com.hzit.ssm.pojo;

public class Provider {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_provider.pid
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    private Integer pid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_provider.pname
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    private String pname;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_provider.intro
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    private String intro;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_provider.pid
     *
     * @return the value of t_provider.pid
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    public Integer getPid() {
        return pid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_provider.pid
     *
     * @param pid the value for t_provider.pid
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_provider.pname
     *
     * @return the value of t_provider.pname
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    public String getPname() {
        return pname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_provider.pname
     *
     * @param pname the value for t_provider.pname
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_provider.intro
     *
     * @return the value of t_provider.intro
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    public String getIntro() {
        return intro;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_provider.intro
     *
     * @param intro the value for t_provider.intro
     *
     * @mbggenerated Sun Jun 02 11:18:15 CST 2019
     */
    public void setIntro(String intro) {
        this.intro = intro == null ? null : intro.trim();
    }
}