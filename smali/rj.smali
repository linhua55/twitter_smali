.class public Lrj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lro;


# instance fields
.field private final a:Lro;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/library/client/Session;

.field private final d:Lcom/twitter/library/client/bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;Lro;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrj;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lrj;->c:Lcom/twitter/library/client/Session;

    .line 35
    iput-object p3, p0, Lrj;->d:Lcom/twitter/library/client/bd;

    .line 36
    iput-object p4, p0, Lrj;->a:Lro;

    .line 37
    return-void
.end method

.method static synthetic a(Lrj;)Lro;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lrj;->a:Lro;

    return-object v0
.end method


# virtual methods
.method public a(J)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lbmf;

    iget-object v1, p0, Lrj;->b:Landroid/content/Context;

    iget-object v2, p0, Lrj;->c:Lcom/twitter/library/client/Session;

    invoke-direct {v0, v1, v2, p1, p2}, Lbmf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    .line 52
    iget-object v1, p0, Lrj;->d:Lcom/twitter/library/client/bd;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lbmf;->b()Lrx/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrj;->a(Lrx/o;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public a(Lclh;)Lrx/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclh;",
            ")",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Lbmb;

    iget-object v2, p0, Lrj;->b:Landroid/content/Context;

    iget-object v3, p0, Lrj;->c:Lcom/twitter/library/client/Session;

    iget-wide v4, p1, Lclh;->a:J

    iget-boolean v6, p1, Lclh;->f:Z

    invoke-direct/range {v1 .. v6}, Lbmb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JZ)V

    .line 44
    iget-object v0, p0, Lrj;->d:Lcom/twitter/library/client/bd;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 45
    invoke-virtual {v1}, Lbmb;->b()Lrx/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lrj;->a(Lrx/o;Lclh;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method a(Lrx/o;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<",
            "Lbmd;",
            ">;)",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lrn;

    invoke-direct {v0, p0}, Lrn;-><init>(Lrj;)V

    .line 78
    invoke-virtual {p1, v0}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lrm;

    invoke-direct {v1, p0}, Lrm;-><init>(Lrj;)V

    .line 84
    invoke-virtual {v0, v1}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method a(Lrx/o;Lclh;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;",
            "Lclh;",
            ")",
            "Lrx/o",
            "<",
            "Lclh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lrl;

    invoke-direct {v0, p0, p2}, Lrl;-><init>(Lrj;Lclh;)V

    .line 59
    invoke-virtual {p1, v0}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Lrk;

    invoke-direct {v1, p0, p2}, Lrk;-><init>(Lrj;Lclh;)V

    .line 66
    invoke-virtual {v0, v1}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v0

    .line 58
    return-object v0
.end method
