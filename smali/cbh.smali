.class public Lcbh;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcbh;


# instance fields
.field private final b:Lcbk;


# direct methods
.method private constructor <init>(Lcbk;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcbh;->b:Lcbk;

    .line 41
    return-void
.end method

.method public static a()Lcbh;
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 25
    const-class v0, Lcbh;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 26
    sget-object v0, Lcbh;->a:Lcbh;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcbh;

    new-instance v1, Lcbj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcbj;-><init>(Lcbi;)V

    invoke-direct {v0, v1}, Lcbh;-><init>(Lcbk;)V

    sput-object v0, Lcbh;->a:Lcbh;

    .line 29
    :cond_0
    sget-object v0, Lcbh;->a:Lcbh;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->c()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->g()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->h()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->i()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->j()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->k()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->e()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->l()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->m()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcbh;->b:Lcbk;

    invoke-interface {v0}, Lcbk;->n()Z

    move-result v0

    return v0
.end method
