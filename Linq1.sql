use LINQDemo
INSERT INTO ResourceTypes
(ResourceTypeId    ,Name      ,IsActive,    AddedBy    ,AddedDate,    ModifiedBy,    ModifiedDate) VALUES
(3,'Chrome','true',3,'2008-12-6',3,'2008-12-15'),
(4,'Linked in','true',2,'2008-12-6',3,'2008-12-15'),
(5,'Google','true',2,'2008-12-6',3,'2008-12-15'),
(6,'Microsoft','false',3,'2009-01-25',4,'2009-06-09'),
(7,'Facebook','false',4,'2009-03-25',3,'2010-01-11'),
(8,'Instagram','true',3,'2009-03-18',2,'2010-01-19');
Select *from ResourceTypes

INSERT INTO Resources
(ResourceId    ,Name    ,Description    ,IsActive,    AddedBy    ,AddedDate,    ModifiedBy,    ModifiedDate,    ResourceTypeId_ResourceTypeId) VALUES
(3,'MVC','Intro','true',2,'2008-12-6',5,'2008-12-15',6),
(4,'Html','Intro','false',3,'2008-12-6',5,'2008-12-15',5),

(25,'Linq','Intro','true',4,'2008-12-6',5,'2008-12-15',5),
(26,'React','Components','false',6,'2009-01-25',6,'2009-06-09',6),
(27,'Angular','Routing','false',4,'2009-03-25',6,'2010-01-11',7),
(28,'C#','OOPS','true',2,'2009-03-18',7,'2010-01-19',8),
(24,'C#','OOPS','true',2,'2009-03-18',7,'2010-01-19',8);

delete from resources  where ResourceId in(26)

SET IDENTITY_INSERT Resources OFF;

Select * from Resources group by AddedBy

INSERT INTO  SubResources
(SubResourceId,    Name    ,Description    ,IsActive,    AddedBy    ,AddedDate,    ModifiedBy,    ModifiedDate,    ResourceId_ResourceId)
VALUES
(3,'Inheritance','Types','true',5,'2008-12-09',8,'2008-12-18',21),
(4,'Abstraction','Types','false',7,'2008-12-09',8,'2008-12-18',22),
(44,'Queries','Types','true',7,'2008-12-09',8,'2008-12-18',24),
(45,'SinglePageApplication','Intro','true',5,'2008-11-09',8,'2008-12-20',25),
(46,'Routing','Parameters','false',6,'2008-12-29',5,'2008-12-28',26),
(47,'Polymorphism','overriding','true',3,'2008-12-19',8,'2008-12-18',27);
SET IDENTITY_INSERT SubResources ON;
Select *from SubResources