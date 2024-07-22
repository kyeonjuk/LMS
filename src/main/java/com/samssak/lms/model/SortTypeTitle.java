package com.samssak.lms.model;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum SortTypeTitle {

  // OLD = 객체.name
  // createDate,asc = 객체.sortValue

  old("createDate,asc"),
  new1("createDate,desc"),
  nameAsc("title,asc"),
  nameDesc("title,desc");

  private final String sortValue;

  public String getSortValue() {
    return sortValue;
  }

  public static SortTypeName fromString(String sortName) {

    if (sortName.equals("null")) {
      sortName = "new1";
    }

    for (SortTypeName type : SortTypeName.values()) {

      if (type.name().equals(sortName)) {
        return type;
      }
    }

    return null;
  }

}
