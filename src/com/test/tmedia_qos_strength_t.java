/**  
* @Title:  EN.java
* @Package com.test
* @Description: TODO(用一句话描述该文件做什么)
* @author Liu XiaoYang
* @date  2014-8-20 上午09:35:34
* @version V1.0  
* Update Logs:
* ****************************************************
* Name:
* Date:
* Description:
******************************************************
*/
package com.test;


/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.9
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */


public enum tmedia_qos_strength_t {
  tmedia_qos_strength_none,
  tmedia_qos_strength_failure,
  tmedia_qos_strength_unknown,
  tmedia_qos_strength_optional,
  tmedia_qos_strength_mandatory;

  public final int swigValue() {
    return swigValue;
  }

  public static tmedia_qos_strength_t swigToEnum(int swigValue) {
    tmedia_qos_strength_t[] swigValues = tmedia_qos_strength_t.class.getEnumConstants();
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (tmedia_qos_strength_t swigEnum : swigValues)
      if (swigEnum.swigValue == swigValue)
        return swigEnum;
    throw new IllegalArgumentException("No enum " + tmedia_qos_strength_t.class + " with value " + swigValue);
  }

  @SuppressWarnings("unused")
  private tmedia_qos_strength_t() {
    this.swigValue = SwigNext.next++;
  }

  @SuppressWarnings("unused")
  private tmedia_qos_strength_t(int swigValue) {
    this.swigValue = swigValue;
    SwigNext.next = swigValue+1;
  }

  @SuppressWarnings("unused")
  private tmedia_qos_strength_t(tmedia_qos_strength_t swigEnum) {
    this.swigValue = swigEnum.swigValue;
    SwigNext.next = this.swigValue+1;
  }

  private final int swigValue;

  private static class SwigNext {
    private static int next = 0;
  }
  
  public static void main(String[] args) {
	
}
}

