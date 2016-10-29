.class public Lbsu;
.super Lcom/twitter/library/service/b;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/service/b",
        "<",
        "Lcom/twitter/library/api/search/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private l:I

.field private m:Z

.field private final r:Z

.field private s:Z

.field private final t:Z

.field private final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/topic/TwitterTopic;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/topic/TwitterTopic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbsu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Z)V
    .locals 13

    .prologue
    .line 62
    const/4 v3, 0x1

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    const-string/jumbo v6, ""

    const-string/jumbo v7, "top"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lbsu;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZ)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lbsu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsu;->u:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbsu;->v:Ljava/util/ArrayList;

    .line 94
    iput-boolean p3, p0, Lbsu;->a:Z

    .line 95
    iput-object p4, p0, Lbsu;->b:Ljava/lang/String;

    .line 96
    iput p5, p0, Lbsu;->c:I

    .line 97
    iput-object p6, p0, Lbsu;->g:Ljava/lang/String;

    .line 98
    iput-object p7, p0, Lbsu;->h:Ljava/lang/String;

    .line 99
    iput-boolean p8, p0, Lbsu;->i:Z

    .line 100
    iput-boolean p9, p0, Lbsu;->j:Z

    .line 101
    iput-boolean p10, p0, Lbsu;->k:Z

    .line 102
    iput-boolean p11, p0, Lbsu;->r:Z

    .line 103
    iput-boolean p12, p0, Lbsu;->t:Z

    .line 104
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/library/service/d;
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lbsu;->K()Lcom/twitter/library/service/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "trends"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "plus"

    aput-object v3, v1, v2

    .line 115
    invoke-virtual {v0, v1}, Lcom/twitter/library/service/e;->a([Ljava/lang/Object;)Lcom/twitter/library/service/e;

    move-result-object v0

    .line 117
    iget-boolean v1, p0, Lbsu;->a:Z

    if-eqz v1, :cond_0

    .line 118
    const-string/jumbo v1, "pc"

    iget-boolean v2, p0, Lbsu;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 121
    :cond_0
    iget-object v1, p0, Lbsu;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string/jumbo v1, "debug_str"

    iget-object v2, p0, Lbsu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 125
    :cond_1
    iget v1, p0, Lbsu;->c:I

    if-lez v1, :cond_2

    .line 126
    const-string/jumbo v1, "debug_lvl"

    iget v2, p0, Lbsu;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 129
    :cond_2
    iget-object v1, p0, Lbsu;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    const-string/jumbo v1, "experiments"

    iget-object v2, p0, Lbsu;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 133
    :cond_3
    iget v1, p0, Lbsu;->l:I

    if-lez v1, :cond_4

    .line 134
    const-string/jumbo v1, "max_trends"

    iget v2, p0, Lbsu;->l:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 137
    :cond_4
    iget-object v1, p0, Lbsu;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    const-string/jumbo v1, "tr_img"

    iget-object v2, p0, Lbsu;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/library/service/e;

    .line 141
    :cond_5
    iget-boolean v1, p0, Lbsu;->i:Z

    if-eqz v1, :cond_6

    .line 142
    const-string/jumbo v1, "tr_desc"

    iget-boolean v2, p0, Lbsu;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 146
    :cond_6
    iget-boolean v1, p0, Lbsu;->j:Z

    if-eqz v1, :cond_7

    .line 147
    const-string/jumbo v1, "tr_ctx_rel"

    iget-boolean v2, p0, Lbsu;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 150
    :cond_7
    iget-boolean v1, p0, Lbsu;->k:Z

    if-eqz v1, :cond_8

    .line 151
    const-string/jumbo v1, "tr_ctx_cnt"

    iget-boolean v2, p0, Lbsu;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 154
    :cond_8
    iget-boolean v1, p0, Lbsu;->t:Z

    if-eqz v1, :cond_9

    .line 155
    const-string/jumbo v1, "tr_empty_ok"

    iget-boolean v2, p0, Lbsu;->t:Z

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;Z)Lcom/twitter/library/service/e;

    .line 157
    :cond_9
    invoke-virtual {v0}, Lcom/twitter/library/service/e;->a()Lcom/twitter/library/service/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/search/m;)V
    .locals 8

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/twitter/internal/network/HttpOperation;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {p3}, Lcom/twitter/library/api/search/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/k;

    .line 165
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/twitter/library/api/search/k;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, v0, Lcom/twitter/library/api/search/k;->a:Lcom/twitter/library/api/search/l;

    iget-boolean v1, v1, Lcom/twitter/library/api/search/l;->c:Z

    iput-boolean v1, p0, Lbsu;->s:Z

    .line 167
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v4

    .line 168
    iget-object v0, v0, Lcom/twitter/library/api/search/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/j;

    .line 169
    iget v2, v0, Lcom/twitter/library/api/search/j;->a:I

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/twitter/library/api/search/j;->a:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 171
    :cond_1
    iget-object v0, v0, Lcom/twitter/library/api/search/j;->b:Lcom/twitter/model/topic/TwitterTopic;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lbsu;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v0, p0, Lbsu;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lbsu;->S()Lcom/twitter/library/provider/dm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/twitter/library/provider/dm;->b(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v0, p0, Lbsu;->u:Ljava/util/ArrayList;

    .line 177
    invoke-static {v0, v4}, Lcuo;->b(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lbsu;->m:Z

    .line 178
    iget-boolean v0, p0, Lbsu;->m:Z

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lbsu;->u:Ljava/util/ArrayList;

    invoke-static {v0, v4}, Lcuo;->a(Ljava/util/List;Ljava/util/List;)V

    .line 180
    invoke-virtual {p0}, Lbsu;->O()Z

    move-result v5

    .line 181
    invoke-virtual {p0}, Lbsu;->S()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lbsu;->N()Lcom/twitter/library/service/ab;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/library/service/ab;->c:J

    .line 183
    if-nez v5, :cond_4

    .line 184
    invoke-virtual {p0}, Lbsu;->T()Lcom/twitter/library/provider/b;

    move-result-object v6

    .line 186
    invoke-virtual {p0}, Lbsu;->g()Z

    move-result v7

    .line 185
    invoke-virtual/range {v1 .. v7}, Lcom/twitter/library/provider/dm;->a(JLjava/util/List;ZLcom/twitter/library/provider/b;Z)I

    .line 187
    invoke-virtual {v6}, Lcom/twitter/library/provider/b;->a()V

    .line 188
    iget-boolean v0, p0, Lbsu;->r:Z

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lbsu;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget-object v0, p0, Lbsu;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    :cond_3
    :goto_1
    return-void

    .line 193
    :cond_4
    const/4 v6, 0x0

    .line 194
    invoke-virtual {p0}, Lbsu;->g()Z

    move-result v7

    .line 193
    invoke-virtual/range {v1 .. v7}, Lcom/twitter/library/provider/dm;->a(JLjava/util/List;ZLcom/twitter/library/provider/b;Z)I

    .line 195
    iget-object v0, p0, Lbsu;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v0, p0, Lbsu;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method protected bridge synthetic a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/service/c;)V
    .locals 0

    .prologue
    .line 27
    check-cast p3, Lcom/twitter/library/api/search/m;

    invoke-virtual {p0, p1, p2, p3}, Lbsu;->a(Lcom/twitter/internal/network/HttpOperation;Lcom/twitter/library/service/aa;Lcom/twitter/library/api/search/m;)V

    return-void
.end method

.method protected b()Lcom/twitter/library/api/search/m;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/twitter/library/api/search/m;

    invoke-direct {v0}, Lcom/twitter/library/api/search/m;-><init>()V

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lbsu;->m:Z

    return v0
.end method

.method protected synthetic f()Lcom/twitter/library/service/c;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lbsu;->b()Lcom/twitter/library/api/search/m;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lbsu;->s:Z

    return v0
.end method
