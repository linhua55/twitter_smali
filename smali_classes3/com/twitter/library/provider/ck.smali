.class public Lcom/twitter/library/provider/ck;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/library/api/ai;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:Lcom/twitter/library/provider/b;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Z

.field public final p:Lcom/twitter/model/timeline/bu;


# direct methods
.method private constructor <init>(Lcom/twitter/library/provider/cm;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iget-object v0, p1, Lcom/twitter/library/provider/cm;->b:Lcom/twitter/library/api/ai;

    iput-object v0, p0, Lcom/twitter/library/provider/ck;->a:Lcom/twitter/library/api/ai;

    .line 119
    iget-object v0, p1, Lcom/twitter/library/provider/cm;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/library/provider/ck;->b:Ljava/util/List;

    .line 120
    iget-wide v0, p1, Lcom/twitter/library/provider/cm;->d:J

    iput-wide v0, p0, Lcom/twitter/library/provider/ck;->d:J

    .line 121
    iget-wide v0, p1, Lcom/twitter/library/provider/cm;->c:J

    iput-wide v0, p0, Lcom/twitter/library/provider/ck;->c:J

    .line 122
    iget v0, p1, Lcom/twitter/library/provider/cm;->e:I

    iput v0, p0, Lcom/twitter/library/provider/ck;->e:I

    .line 123
    iget-object v0, p1, Lcom/twitter/library/provider/cm;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/provider/ck;->f:Ljava/lang/String;

    .line 124
    iget-boolean v0, p1, Lcom/twitter/library/provider/cm;->g:Z

    iput-boolean v0, p0, Lcom/twitter/library/provider/ck;->g:Z

    .line 125
    iget-boolean v0, p1, Lcom/twitter/library/provider/cm;->h:Z

    iput-boolean v0, p0, Lcom/twitter/library/provider/ck;->h:Z

    .line 126
    iget-boolean v0, p1, Lcom/twitter/library/provider/cm;->i:Z

    iput-boolean v0, p0, Lcom/twitter/library/provider/ck;->i:Z

    .line 127
    iget-object v0, p1, Lcom/twitter/library/provider/cm;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/provider/ck;->j:Ljava/lang/String;

    .line 128
    iget-boolean v0, p1, Lcom/twitter/library/provider/cm;->k:Z

    iput-boolean v0, p0, Lcom/twitter/library/provider/ck;->k:Z

    .line 129
    iget-object v0, p1, Lcom/twitter/library/provider/cm;->l:Lcom/twitter/library/provider/b;

    iput-object v0, p0, Lcom/twitter/library/provider/ck;->l:Lcom/twitter/library/provider/b;

    .line 130
    iget-object v0, p1, Lcom/twitter/library/provider/cm;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/provider/ck;->m:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/twitter/library/provider/cm;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/library/provider/ck;->n:Ljava/lang/String;

    .line 132
    iget-boolean v0, p1, Lcom/twitter/library/provider/cm;->o:Z

    iput-boolean v0, p0, Lcom/twitter/library/provider/ck;->o:Z

    .line 133
    iget-object v0, p1, Lcom/twitter/library/provider/cm;->p:Lcom/twitter/model/timeline/bu;

    sget-object v1, Lcom/twitter/model/timeline/bu;->a:Lcom/twitter/model/timeline/bu;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/bu;

    iput-object v0, p0, Lcom/twitter/library/provider/ck;->p:Lcom/twitter/model/timeline/bu;

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/provider/cm;Lcom/twitter/library/provider/cl;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/twitter/library/provider/ck;-><init>(Lcom/twitter/library/provider/cm;)V

    return-void
.end method
