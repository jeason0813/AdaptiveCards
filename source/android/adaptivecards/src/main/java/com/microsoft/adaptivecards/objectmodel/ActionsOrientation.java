/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.8
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.microsoft.adaptivecards.objectmodel;

public final class ActionsOrientation {
  public final static ActionsOrientation Vertical = new ActionsOrientation("Vertical", AdaptiveCardObjectModelJNI.ActionsOrientation_Vertical_get());
  public final static ActionsOrientation Horizontal = new ActionsOrientation("Horizontal");

  public final int swigValue() {
    return swigValue;
  }

  public String toString() {
    return swigName;
  }

  public static ActionsOrientation swigToEnum(int swigValue) {
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (int i = 0; i < swigValues.length; i++)
      if (swigValues[i].swigValue == swigValue)
        return swigValues[i];
    throw new IllegalArgumentException("No enum " + ActionsOrientation.class + " with value " + swigValue);
  }

  private ActionsOrientation(String swigName) {
    this.swigName = swigName;
    this.swigValue = swigNext++;
  }

  private ActionsOrientation(String swigName, int swigValue) {
    this.swigName = swigName;
    this.swigValue = swigValue;
    swigNext = swigValue+1;
  }

  private ActionsOrientation(String swigName, ActionsOrientation swigEnum) {
    this.swigName = swigName;
    this.swigValue = swigEnum.swigValue;
    swigNext = this.swigValue+1;
  }

  private static ActionsOrientation[] swigValues = { Vertical, Horizontal };
  private static int swigNext = 0;
  private final int swigValue;
  private final String swigName;
}

