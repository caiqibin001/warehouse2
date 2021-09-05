package com.fc.v2.model.VO;


import java.util.List;

public class RrfidVo {

    private String err_code;
    private String err_string;
    private Integer msg_type;
    private List<RfidDetail> msg_data;

    public String getErr_code() {
        return err_code;
    }

    public void setErr_code(String err_code) {
        this.err_code = err_code;
    }

    public String getErr_string() {
        return err_string;
    }

    public void setErr_string(String err_string) {
        this.err_string = err_string;
    }

    public Integer getMsg_type() {
        return msg_type;
    }

    public void setMsg_type(Integer msg_type) {
        this.msg_type = msg_type;
    }

    public List<RfidDetail> getMsg_data() {
        return msg_data;
    }

    public void setMsg_data(List<RfidDetail> msg_data) {
        this.msg_data = msg_data;
    }
}
