package ifb.sbo.api.domain.professor;

import ifb.sbo.api.domain.area_interesse.AreaInteresseDetalhaDTO;
import ifb.sbo.api.domain.curso.CursoDetalhaDTO;
import ifb.sbo.api.domain.formacao.FormacaoDetalhaDTO;
import ifb.sbo.api.domain.tema.TemaDetalhaDTO;

import java.time.LocalDate;
import java.util.List;

public record ProfessorBuscaDTO(
        Long id,
        String nome,
        String email,
        String idLattes,
        String disponibilidade,
        List<CursoDetalhaDTO> cursos,
        List<AreaInteresseDetalhaDTO> areasDeInteresse,
        Boolean solicitacaoPendente,
        Long idSolicitacao) {
}
