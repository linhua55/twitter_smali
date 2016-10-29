.class public Lcue;
.super Lctu;
.source "Twttr"


# instance fields
.field public final e:Lcud;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLctp;Lctr;Lcud;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lctu;-><init>(Ljava/lang/String;JLctp;Lctr;)V

    .line 24
    iput-object p6, p0, Lcue;->e:Lcud;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lctj;)Lcom/twitter/model/timeline/cd;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcue;->e:Lcud;

    iget-object v0, v0, Lcud;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lctj;->a(Ljava/lang/String;)Lcom/twitter/model/core/cs;

    move-result-object v2

    .line 33
    iget-object v0, p0, Lcue;->a:Lctp;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/twitter/model/timeline/an;

    invoke-direct {v0}, Lcom/twitter/model/timeline/an;-><init>()V

    iget-object v1, p0, Lcue;->a:Lctp;

    iget-object v1, v1, Lctp;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/an;->c(Ljava/lang/String;)Lcom/twitter/model/timeline/an;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/twitter/model/timeline/an;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/al;

    move-object v1, v0

    .line 42
    :goto_0
    new-instance v0, Lcom/twitter/model/timeline/cf;

    invoke-direct {v0}, Lcom/twitter/model/timeline/cf;-><init>()V

    .line 43
    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v0

    iget-object v2, p0, Lcue;->e:Lcud;

    iget-object v2, v2, Lcud;->c:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/cf;->c(Ljava/lang/String;)Lcom/twitter/model/timeline/cf;

    move-result-object v0

    iget-wide v2, p0, Lcue;->c:J

    .line 45
    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/cf;->a(J)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    iget-object v2, p0, Lcue;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/cf;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 47
    invoke-virtual {v0, v1}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 48
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cf;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cd;

    .line 42
    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method public synthetic b(Lctj;)Lcom/twitter/model/timeline/ay;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcue;->a(Lctj;)Lcom/twitter/model/timeline/cd;

    move-result-object v0

    return-object v0
.end method
