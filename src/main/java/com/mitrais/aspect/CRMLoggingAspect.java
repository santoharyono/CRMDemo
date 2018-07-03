package com.mitrais.aspect;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class CRMLoggingAspect {

//    private Logger logger = Logger.getLogger(getClass().getName());
    private Logger logger = Logger.getLogger(getClass().getName());

    @Pointcut("execution(* com.mitrais.controller.*.*(..))")
    private void forControllerPackage() {}

    @Pointcut("execution(* com.mitrais.service.*.*(..))")
    private void forServicePackage() {}

    @Pointcut("execution(* com.mitrais.dao.*.*(..))")
    private void forDaoPackage() {}

    @Pointcut("forServicePackage() || forDaoPackage() || forControllerPackage()")
    private void forAppFlow() {}

    @Before("forAppFlow()")
    public void before(JoinPoint joinPoint) {
        String methodName = joinPoint.getSignature().toShortString();
//        logger.info("in @Before: calling method: " + methodName);
        System.out.println("in @Before: calling method: " + methodName);

        Object[] args = joinPoint.getArgs();

        for(Object tempArgs : args) {
            logger.info("Argument" + tempArgs);
        }
    }
}
