-- 1. Selecionar todos os pacientes
SELECT * FROM patient;

-- 2. Pacientes com nome "João"
SELECT * FROM patient WHERE name = 'João';
SELECT * FROM patient WHERE name LIKE '%João%';

-- 3. Consultas de 07/02/2019
SELECT * FROM medical_consultation WHERE CAST(data_consultation AS DATE) = '2019-02-07';

-- 4. Pacientes cujo nome começa com "A"
SELECT * FROM patient WHERE name LIKE 'A%';

-- 5. Contagem de pacientes
SELECT COUNT(*) FROM patient;

-- 6. Contagem de consultas por paciente
SELECT patient_id, COUNT(*) AS qty_patient FROM medical_consultation GROUP BY patient_id;

-- 7. Contagem de consultas por médico
SELECT doctor_id, COUNT(*) AS qty_doctor FROM medical_consultation GROUP BY doctor_id;

-- 8. Consulta mais antiga
SELECT MIN(data_consultation) AS min_date FROM medical_consultation;

-- 9. Consulta mais recente
SELECT MAX(data_consultation) AS max_date FROM medical_consultation;

-- 10. Médicos por especialidade
SELECT speciality_id, COUNT(*) AS qty_speciality FROM doctor GROUP BY speciality_id;

-- 11. Todos os médicos
SELECT * FROM doctor;

-- 12. Usuários do tipo 2
SELECT * FROM users WHERE user_type = 2;

-- 13. Pacientes nascidos antes de 1990
SELECT * FROM patient WHERE birth_date < '1990-01-01';

-- 14. Pacientes associados a médicos
SELECT doctor_id, patient_id, COUNT(*) AS qty_patient FROM medical_consultation GROUP BY doctor_id, patient_id;

-- 15. Consultas do médico ID 1
SELECT doctor_id, COUNT(*) AS qty_consultation_doctor FROM medical_consultation WHERE doctor_id = 1 GROUP BY doctor_id;

-- 16. Contagem de consultas por status
SELECT status, COUNT(*) AS qty_status FROM medical_consultation GROUP BY status;

-- 17. Paciente com CPF específico
SELECT * FROM patient WHERE cpf = '94839859000';

-- 18. Última consulta registrada
SELECT TOP 1 * FROM medical_consultation ORDER BY data_consultation DESC;

-- 19. Pacientes sem consultas
SELECT * FROM patient WHERE id NOT IN (SELECT DISTINCT patient_id FROM medical_consultation);

-- 20. Médicos em clínica ID 1
SELECT COUNT(*) AS qty_doctor_by_clinic FROM doctor WHERE clinic_id = 1;

-- 21. Nomes dos usuários
SELECT name FROM patient;
SELECT name FROM doctor;

-- 22. Soma de valores de consultas por médico (>400)
SELECT doctor_id, SUM(price) AS sum_price FROM medical_consultation GROUP BY doctor_id HAVING SUM(price) > 400.00;