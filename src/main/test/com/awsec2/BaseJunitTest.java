package com.awsec2;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

@ContextConfiguration(locations={"/config/spring/applicationContext.xml"})
public class BaseJunitTest extends AbstractTransactionalJUnit4SpringContextTests{

}
