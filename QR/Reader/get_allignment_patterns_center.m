function [ result ] = get_allignment_patterns_center( version )
center_list(1) = struct('list',[0]);
center_list(2) = struct('list',[18]);
center_list(3) = struct('list',[22]);
center_list(4) = struct('list',[26]);
center_list(5) = struct('list',[30]);
center_list(6) = struct('list',[34]);
center_list(7) = struct('list',[22 38]);
center_list(8) = struct('list',[24 42]);
result = center_list(version); 
