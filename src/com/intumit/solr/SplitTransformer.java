package com.intumit.solr;

import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.Map;

import org.apache.solr.handler.dataimport.Context;
import org.apache.solr.handler.dataimport.DataImporter;
import org.apache.solr.handler.dataimport.Transformer;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;


public class SplitTransformer extends Transformer{

	@Override
	public Object transformRow(Map<String, Object> row, Context context) {
		List<Map<String,String>> allEntityFields = context.getAllEntityFields();
		String url="url";
		for (Map<String, String> map : allEntityFields) {
			String key = map.get(DataImporter.COLUMN);
			if(url.equals(key)){
				try {
					Document parse = Jsoup.parse(new URL((String)row.get(key)), 60000);
					String content = parse.select(".fl").select(".content-left").text();
					row.put("Content_t", content);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return row;
	}

}
