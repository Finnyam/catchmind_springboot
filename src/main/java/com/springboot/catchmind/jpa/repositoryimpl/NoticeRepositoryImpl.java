package com.springboot.catchmind.jpa.repositoryimpl;


import com.querydsl.core.Tuple;
import com.springboot.catchmind.config.CustomJPAQueryFactory;
import com.springboot.catchmind.jpa.entity.NoticeEntity;

import com.springboot.catchmind.jpa.entity.QNoticeEntity;
import com.springboot.catchmind.jpa.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;



@Repository
@RequiredArgsConstructor
public class NoticeRepositoryImpl implements NoticeRepository {

    private final CustomJPAQueryFactory jpaQueryFactory;
    private final QNoticeEntity qNoticeEntity;
    private final EntityManager entityManager;

    @Override
    public List<Tuple> getNoticeByRownum() {
        return jpaQueryFactory.select(
                        qNoticeEntity.ntitle,
                        qNoticeEntity.ncreatedate,
                        qNoticeEntity.nid)
                                      .from(qNoticeEntity)
                                      .orderBy(qNoticeEntity.ncreatedate.desc())
                                      .offset(1)
                                      .limit(5)
                                      .fetch();
    }

    @Override
    public List<NoticeEntity> getNoticeListByPage(Pageable pageable) {
        return jpaQueryFactory.select(qNoticeEntity
//                         Projections.fields(NoticeDto.class,
//
//                                 qNoticeEntity.ntitle,
//                                 qNoticeEntity.ncreatedate,
//                                 qNoticeEntity.nid)
                )
                .from(qNoticeEntity)
                .orderBy(qNoticeEntity.ncreatedate.desc())
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();
    }
}
