/*******************************************************************************
 * Copyright (c) 2011, 2012 EnergyOS.Org
 *
 * Licensed by EnergyOS.Org under one or more contributor license agreements.
 * See the NOTICE file distributed with this work for additional information
 * regarding copyright ownership.  The EnergyOS.org licenses this file
 * to you under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License.  You may obtain a copy
 * of the License at:
 *  
 *   http://www.apache.org/licenses/LICENSE-2.0
 *  
 *  Unless required by applicable law or agreed to in writing,
 *  software distributed under the License is distributed on an
 *  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 *  KIND, either express or implied.  See the License for the
 *  specific language governing permissions and limitations
 *  under the License.
 *  
 ******************************************************************************
*/

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.datacustodian.common;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.energyos.espi.datacustodian.common.AccumulationBehaviorDataOnDemand;
import org.energyos.espi.datacustodian.common.CPPDataOnDemand;
import org.energyos.espi.datacustodian.common.CommodityDataOnDemand;
import org.energyos.espi.datacustodian.common.ConsumptionTierDataOnDemand;
import org.energyos.espi.datacustodian.common.CurrencyDataOnDemand;
import org.energyos.espi.datacustodian.common.DataQualifierDataOnDemand;
import org.energyos.espi.datacustodian.common.DirectionOfFlowDataOnDemand;
import org.energyos.espi.datacustodian.common.KindDataOnDemand;
import org.energyos.espi.datacustodian.common.PhaseCodeDataOnDemand;
import org.energyos.espi.datacustodian.common.RationalNumberDataOnDemand;
import org.energyos.espi.datacustodian.common.ReadingInterharmonicDataOnDemand;
import org.energyos.espi.datacustodian.common.ReadingType;
import org.energyos.espi.datacustodian.common.ReadingTypeDataOnDemand;
import org.energyos.espi.datacustodian.common.TOUDataOnDemand;
import org.energyos.espi.datacustodian.common.TimeAttributeDataOnDemand;
import org.energyos.espi.datacustodian.common.UnitMultiplierDataOnDemand;
import org.energyos.espi.datacustodian.common.UnitSymbolDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ReadingTypeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ReadingTypeDataOnDemand: @Component;
    
    private Random ReadingTypeDataOnDemand.rnd = new SecureRandom();
    
    private List<ReadingType> ReadingTypeDataOnDemand.data;
    
    @Autowired
    private AccumulationBehaviorDataOnDemand ReadingTypeDataOnDemand.accumulationBehaviorDataOnDemand;
    
    @Autowired
    private DataQualifierDataOnDemand ReadingTypeDataOnDemand.dataQualifierDataOnDemand;
    
    @Autowired
    private RationalNumberDataOnDemand ReadingTypeDataOnDemand.rationalNumberDataOnDemand;
    
    @Autowired
    private CommodityDataOnDemand ReadingTypeDataOnDemand.commodityDataOnDemand;
    
    @Autowired
    private ConsumptionTierDataOnDemand ReadingTypeDataOnDemand.consumptionTierDataOnDemand;
    
    @Autowired
    private CPPDataOnDemand ReadingTypeDataOnDemand.cPPDataOnDemand;
    
    @Autowired
    private CurrencyDataOnDemand ReadingTypeDataOnDemand.currencyDataOnDemand;
    
    @Autowired
    private DirectionOfFlowDataOnDemand ReadingTypeDataOnDemand.directionOfFlowDataOnDemand;
    
    @Autowired
    private ReadingInterharmonicDataOnDemand ReadingTypeDataOnDemand.readingInterharmonicDataOnDemand;
    
    @Autowired
    private KindDataOnDemand ReadingTypeDataOnDemand.kindDataOnDemand;
    
    @Autowired
    private TimeAttributeDataOnDemand ReadingTypeDataOnDemand.timeAttributeDataOnDemand;
    
    @Autowired
    private PhaseCodeDataOnDemand ReadingTypeDataOnDemand.phaseCodeDataOnDemand;
    
    @Autowired
    private UnitMultiplierDataOnDemand ReadingTypeDataOnDemand.unitMultiplierDataOnDemand;
    
    @Autowired
    private TOUDataOnDemand ReadingTypeDataOnDemand.tOUDataOnDemand;
    
    @Autowired
    private UnitSymbolDataOnDemand ReadingTypeDataOnDemand.unitSymbolDataOnDemand;
    
    public ReadingType ReadingTypeDataOnDemand.getNewTransientReadingType(int index) {
        ReadingType obj = new ReadingType();
        setDescription(obj, index);
        setIntervalLength(obj, index);
        setUuid(obj, index);
        return obj;
    }
    
    public void ReadingTypeDataOnDemand.setDescription(ReadingType obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void ReadingTypeDataOnDemand.setIntervalLength(ReadingType obj, int index) {
        Integer intervalLength = new Integer(index);
        obj.setIntervalLength(intervalLength);
    }
    
    public void ReadingTypeDataOnDemand.setUuid(ReadingType obj, int index) {
        String uuid = "uuid_" + index;
        obj.setUuid(uuid);
    }
    
    public ReadingType ReadingTypeDataOnDemand.getSpecificReadingType(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        ReadingType obj = data.get(index);
        Long id = obj.getId();
        return ReadingType.findReadingType(id);
    }
    
    public ReadingType ReadingTypeDataOnDemand.getRandomReadingType() {
        init();
        ReadingType obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return ReadingType.findReadingType(id);
    }
    
    public boolean ReadingTypeDataOnDemand.modifyReadingType(ReadingType obj) {
        return false;
    }
    
    public void ReadingTypeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ReadingType.findReadingTypeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'ReadingType' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<ReadingType>();
        for (int i = 0; i < 10; i++) {
            ReadingType obj = getNewTransientReadingType(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
