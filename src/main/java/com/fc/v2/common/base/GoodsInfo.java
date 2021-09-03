package com.fc.v2.common.base;

import java.io.Serializable;
import java.util.List;

public class GoodsInfo implements Serializable {

    private String goodsNo;
    private List<GoodsRow> goodsRows;

    public String getGoodsNo() {
        return goodsNo;
    }

    public void setGoodsNo(String goodsNo) {
        this.goodsNo = goodsNo;
    }

    public List<GoodsRow> getGoodsRows() {
        return goodsRows;
    }

    public void setGoodsRows(List<GoodsRow> goodsRows) {
        this.goodsRows = goodsRows;
    }

    public static class GoodsRow{
        private String goodsRow;
        private List<GoodsCell> goodsCells;

        public String getGoodsRow() {
            return goodsRow;
        }

        public void setGoodsRow(String goodsRow) {
            this.goodsRow = goodsRow;
        }

        public List<GoodsCell> getGoodsCells() {
            return goodsCells;
        }

        public void setGoodsCells(List<GoodsCell> goodsCells) {
            this.goodsCells = goodsCells;
        }
    }
    public static class GoodsCell{
        private String goodsCell;
        private List<GoodsLocal> goodsLocals;

        public String getGoodsCell() {
            return goodsCell;
        }

        public void setGoodsCell(String goodsCell) {
            this.goodsCell = goodsCell;
        }

        public List<GoodsLocal> getGoodsLocals() {
            return goodsLocals;
        }

        public void setGoodsLocals(List<GoodsLocal> goodsLocals) {
            this.goodsLocals = goodsLocals;
        }
    }
    public static class GoodsLocal{
        private String goodsLocal;
        private Boolean isCheck;
        private Boolean isFull;

        public String getGoodsLocal() {
            return goodsLocal;
        }

        public Boolean getCheck() {
            return isCheck;
        }

        public void setCheck(Boolean check) {
            isCheck = check;
        }

        public Boolean getFull() {
            return isFull;
        }

        public void setFull(Boolean full) {
            isFull = full;
        }

        public void setGoodsLocal(String goodsLocal) {
            this.goodsLocal = goodsLocal;
        }
    }
}
