package com.fc.v2.model.VO;

public class RfidDetail {
    private String epc;
    private String bank_data;
    private String antenna;
    private String read_count;
    private String protocol;
    private String rssi;

    public String getEpc() {
        return epc;
    }

    public void setEpc(String epc) {
        this.epc = epc;
    }

    public String getBank_data() {
        return bank_data;
    }

    public void setBank_data(String bank_data) {
        this.bank_data = bank_data;
    }

    public String getAntenna() {
        return antenna;
    }

    public void setAntenna(String antenna) {
        this.antenna = antenna;
    }

    public String getRead_count() {
        return read_count;
    }

    public void setRead_count(String read_count) {
        this.read_count = read_count;
    }

    public String getProtocol() {
        return protocol;
    }

    public void setProtocol(String protocol) {
        this.protocol = protocol;
    }

    public String getRssi() {
        return rssi;
    }

    public void setRssi(String rssi) {
        this.rssi = rssi;
    }
}
