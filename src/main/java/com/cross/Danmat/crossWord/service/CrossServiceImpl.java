package com.cross.Danmat.crossWord.service;

import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import com.cross.Danmat.crossWord.dao.CrossDao;

import com.cross.Danmat.crossWord.command.GidCommand;
import com.cross.Danmat.crossWord.domain.CWList;
import com.cross.Danmat.crossWord.domain.CrossWord;

public class CrossServiceImpl implements CrossService {
	DataSource datasource = new DataSource();
	CrossDao crossDao = new CrossDao(datasource);
	
	MakeCW makeCW= null;
	
	public CrossServiceImpl() {
		super();
	}
	
	public CrossServiceImpl(CrossDao crossDao) {
		this.crossDao = crossDao;
	}
	
	public List<CrossWord> firstWord(CrossWord crossWord) {
		return crossDao.firstWord(crossWord);
	}
	
	public List<CrossWord> allWord(CrossWord crossWord) {
		return crossDao.allWord(crossWord);
	}
	
	public List<CrossWord> randomWord(CrossWord crossWord) {
		return crossDao.randomWord(crossWord);
	}

	public List<CrossWord> checkWord(String check) {
		return crossDao.checkWord(check);
	}
	
	public void deleteList(CWList cwList) {
		this.crossDao.deleteList(cwList);
	}
	
	public void addToList(CWList cwList) {
		this.crossDao.addToList(cwList);
	}
	
	public GidCommand randomGid(CWList cwList) {
		return this.crossDao.randomGid(cwList);
	}
	
	public List<CWList> playGame(CWList cwList) {
		return this.crossDao.playGame(cwList);
	}
	
	public GidCommand lastCWNum(CWList cwList) {
		return this.crossDao.lastCWNum(cwList);
	}
	public void makeCrossWord (int size, int repeatNum) {
		this.makeCrossWord(size, repeatNum);
	}
	
	public List<GidCommand> allGid() {
		return this.crossDao.allGid();
	}
	
	public List<CWList> findByGid(CWList cwList) {
		return crossDao.findByGid(cwList);
	}
	
	public int wordNumByGid(CWList cwList) {
		return crossDao.wordNumByGid(cwList).size();
	}
	

}
