

CREATE PROCEDURE SP_ExcluirAluno
	@Id INT
AS
BEGIN
	DECLARE @NomeAluno VARCHAR(200)
	SELECT @NomeAluno = Nome 
	FROM Aluno 
	WHERE Id = @Id


	DELETE 
	FROM Aluno 
	WHERE Id = @Id

	SELECT CONCAT('O(a) Aluno(a) ', @NomeAluno, ', foi excluido com sucesso!')
END
