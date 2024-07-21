package com.samssak.lms.model;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public enum SortTypeName {

  // OLD = 객체.name
  // createDate,asc = 객체.sortValue

  old("createDate,asc"),
  new1("createDate,desc"),
  nameAsc("name,asc"),
  nameDesc("name,desc");

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
