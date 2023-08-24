/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logic.user;

/**
 *
 * @author ptkng
 */
public class LGuserShop {

    public String createSQL(int[] PRICE, int[] CATEGORY) {
        String sql = "Select Top 9 * from SanPham Where 1=1 ";

//        XU ly price
        if (PRICE[0] != 1) { // ko chon all
            int check_first = 1;
            for (int i = 1; i < PRICE.length; i++) {
//                thang dau tien
                if (check_first == 1 && PRICE[i] == 1) {
                    switch (i) {
                        case 1:
                            sql += " AND ( ( GiaThanh > 300000 AND GiaThanh < 800000 ) ";
                            break;
                        case 2:
                            sql += " AND ( ( GiaThanh >= 800000 AND GiaThanh < 1500000 ) ";
                            break;
                        case 3:
                            sql += " AND ( ( GiaThanh >= 1500000 AND GiaThanh < 3000000 ) ";
                            break;
                        case 4:
                            sql += " AND ( ( GiaThanh >= 3000000 AND GiaThanh < 10000000 ) ";
                            break;
                        case 5:
                            sql += " AND ( ( GiaThanh >= 10000000 AND GiaThanh <  100000000) ";
                            break;
                    }

                    check_first = 0;
                } else if (check_first != 1 && PRICE[i] == 1) {
                    switch (i) {
                        case 2:
                            sql += " OR ( GiaThanh >= 800000 AND GiaThanh < 1500000 ) ";
                            break;
                        case 3:
                            sql += " OR ( GiaThanh >= 1500000 AND GiaThanh < 3000000 ) ";
                            break;
                        case 4:
                            sql += " OR ( GiaThanh >= 3000000 AND GiaThanh < 10000000 ) ";
                            break;
                        case 5:
                            sql += " OR ( GiaThanh >= 10000000 AND GiaThanh <  100000000) ";
                            break;
                    }
                }
            }
            sql += " ) ";
        }
        
        //        XU ly CATEGORY
        if (CATEGORY[0] != 1) { // ko chon all
            int check_first = 1;
            for (int i = 1; i < CATEGORY.length; i++) {
//                thang dau tien
                if (check_first == 1 && CATEGORY[i] == 1) {
                    switch (i) {
                        case 1:
                            sql += " AND  ( NhomSP = 1 ";
                            break;
                        case 2:
                            sql += " AND  ( NhomSP = 2  ";
                            break;
                        case 3:
                            sql += " AND (  NhomSP = 3 ";
                            break;
                        case 4:
                            sql += " AND (  NhomSP = 4 ";
                            break;
                    }

                    check_first = 0;
                } else if (check_first != 1 && CATEGORY[i] == 1) {
                    switch (i) {
                        case 2:
                            sql += " OR NhomSP = 2 ";
                            break;
                        case 3:
                            sql += " OR NhomSP = 3 ";
                            break;
                        case 4:
                            sql += " OR NhomSP = 4 ";
                            break;
                    }
                }
            }
              sql += " ) ";
        }
        
        return sql;
    }

     public String createSQL(int[] PRICE, int[] CATEGORY, int count_pages_exist) {
        String sql = "Select * from SanPham Where 1=1 ";
        
//        XU ly price
        if (PRICE[0] != 1) { // ko chon all
            int check_first = 1;
            for (int i = 1; i < PRICE.length; i++) {
//                thang dau tien
                if (check_first == 1 && PRICE[i] == 1) {
                    switch (i) {
                        case 1:
                            sql += " AND ( ( GiaThanh > 300000 AND GiaThanh < 800000 ) ";
                            break;
                        case 2:
                            sql += " AND ( ( GiaThanh >= 800000 AND GiaThanh < 1500000 ) ";
                            break;
                        case 3:
                            sql += " AND ( ( GiaThanh >= 1500000 AND GiaThanh < 3000000 ) ";
                            break;
                        case 4:
                            sql += " AND ( ( GiaThanh >= 3000000 AND GiaThanh < 10000000 ) ";
                            break;
                        case 5:
                            sql += " AND ( ( GiaThanh >= 10000000 AND GiaThanh <  100000000) ";
                            break;
                    }

                    check_first = 0;
                } else if (check_first != 1 && PRICE[i] == 1) {
                    switch (i) {
                        case 2:
                            sql += " OR ( GiaThanh >= 800000 AND GiaThanh < 1500000 ) ";
                            break;
                        case 3:
                            sql += " OR ( GiaThanh >= 1500000 AND GiaThanh < 3000000 ) ";
                            break;
                        case 4:
                            sql += " OR ( GiaThanh >= 3000000 AND GiaThanh < 10000000 ) ";
                            break;
                        case 5:
                            sql += " OR ( GiaThanh >= 10000000 AND GiaThanh <  100000000) ";
                            break;
                    }
                }
            }
            sql += " ) ";
        }
        
        //        XU ly CATEGORY
        if (CATEGORY[0] != 1) { // ko chon all
            int check_first = 1;
            for (int i = 1; i < CATEGORY.length; i++) {
//                thang dau tien
                if (check_first == 1 && CATEGORY[i] == 1) {
                    switch (i) {
                        case 1:
                            sql += " AND  ( NhomSP = 1 ";
                            break;
                        case 2:
                            sql += " AND  ( NhomSP = 2  ";
                            break;
                        case 3:
                            sql += " AND (  NhomSP = 3 ";
                            break;
                        case 4:
                            sql += " AND (  NhomSP = 4 ";
                            break;
                    }

                    check_first = 0;
                } else if (check_first != 1 && CATEGORY[i] == 1) {
                    switch (i) {
                        case 2:
                            sql += " OR NhomSP = 2 ";
                            break;
                        case 3:
                            sql += " OR NhomSP = 3 ";
                            break;
                        case 4:
                            sql += " OR NhomSP = 4 ";
                            break;
                    }
                }
            }
              sql += " ) ";
        }
        
        sql += " ORDER BY MaSP ASC \n" +
                "OFFSET " + Integer.toString(count_pages_exist)  + " ROWS \n" +
                "FETCH NEXT 6 ROWS ONLY ";
        
        
        return sql;
    }
}
