package com.ha.healthauditlog.service;

import java.security.Principal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ha.healthauditlog.model.Comment;
import com.ha.healthauditlog.model.Complications;
import com.ha.healthauditlog.model.Contraception;
import com.ha.healthauditlog.model.PatientDetails;
import com.ha.healthauditlog.model.Referal;
import com.ha.healthauditlog.model.Sample;
import com.ha.healthauditlog.model.SampleResult;
import com.ha.healthauditlog.model.SignUp;
import com.ha.healthauditlog.repository.CommentRepository;
import com.ha.healthauditlog.repository.ComplicationsRepository;
import com.ha.healthauditlog.repository.ContraceptionRepository;
import com.ha.healthauditlog.repository.PatientDetailsRepository;
import com.ha.healthauditlog.repository.ReferalRepository;
import com.ha.healthauditlog.repository.SampleRepository;
import com.ha.healthauditlog.repository.SampleResultRepository;
import com.ha.healthauditlog.repository.SignUpRepository;

@Service
public class PatientServiceImpl implements PatientService{
	
	@Autowired
	PatientDetailsRepository patientDetailsRepository;
	@Autowired
	SampleRepository sampleRepository;
	@Autowired
	ReferalRepository referalRepository;
	@Autowired
	ContraceptionRepository contraceptionRepository;
	@Autowired
	CommentRepository commentRepository;
	@Autowired
	ComplicationsRepository complicationsRepository;
	@Autowired
	SampleResultRepository sampleResultRepository;

	@Override
	public List<PatientDetails> findAllPatientDetails() {
		List<PatientDetails> patientList=patientDetailsRepository.findAll();
		return patientList;
	}

	@Override
	public RedirectAttributes saveSampleDetails(Sample sample, RedirectAttributes attributes, Principal principal) {
		sampleRepository.save(sample);
		return null;
	}

	@Override
	public RedirectAttributes savePatientDetails(PatientDetails patientDetails, RedirectAttributes attributes,
			Principal principal) {
		patientDetailsRepository.save(patientDetails);
		return null;
	}

	@Override
	public List<Referal> findAllReferal() {
		
		return referalRepository.findAll();
	}

	@Override
	public List<Contraception> findAllcontraception() {
		
		return contraceptionRepository.findAll();
	}

	@Override
	public List<Comment> findAllComment() {
		
		return commentRepository.findAll();
	}

	@Override
	public PatientDetails findOnePatientDetails(Long patientId) {
		
		return patientDetailsRepository.findOne(patientId);
	}

	@Override
	public List<Complications> findAllComplicationDetails() {
		
		return complicationsRepository.findAll();
	}

	@Override
	public RedirectAttributes saveComplicationDetails(Complications complications, RedirectAttributes attributes,
			Principal principal) {
		complicationsRepository.save(complications);
		return null;
	}

	@Override
	public Complications findOneComplicationDetails(Long complicationId) {
		
		return complicationsRepository.findOne(complicationId);
	}

	@Override
	public List<SampleResult> findAllSampleResults() {
		
		return sampleResultRepository.findAll();
	}

	@Override
	public RedirectAttributes saveSignUp(SignUp signUp, RedirectAttributes attributes, Principal principal) {
		// TODO Auto-generated method stub
		return null;
	}

		
}