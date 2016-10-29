.class public Lcam;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcam;


# instance fields
.field private final b:Lcap;


# direct methods
.method private constructor <init>(Lcap;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcam;->b:Lcap;

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 77
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/twitter/util/ui/r;->a(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a(Z)I
    .locals 1

    .prologue
    .line 69
    if-eqz p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static a()Lcam;
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 46
    const-class v0, Lcam;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 47
    sget-object v0, Lcam;->a:Lcam;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcam;

    new-instance v1, Lcao;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcao;-><init>(Lcan;)V

    invoke-direct {v0, v1}, Lcam;-><init>(Lcap;)V

    sput-object v0, Lcam;->a:Lcam;

    .line 50
    :cond_0
    sget-object v0, Lcam;->a:Lcam;

    return-object v0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;Z)Z
    .locals 1

    .prologue
    .line 97
    .line 98
    invoke-static {p1}, Lcam;->b(Z)Lcom/twitter/util/math/Size;

    move-result-object v0

    .line 97
    invoke-static {p0, v0}, Lcug;->c(Lcom/twitter/model/core/Tweet;Lcom/twitter/util/math/Size;)Z

    move-result v0

    return v0
.end method

.method public static b(Z)Lcom/twitter/util/math/Size;
    .locals 1

    .prologue
    .line 92
    if-eqz p0, :cond_0

    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/library/widget/TweetView;->b:Lcom/twitter/util/math/Size;

    goto :goto_0
.end method


# virtual methods
.method public b()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcam;->g()Z

    move-result v0

    invoke-static {v0}, Lcam;->a(Z)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcam;->b:Lcap;

    invoke-interface {v0}, Lcap;->d()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcam;->b:Lcap;

    invoke-interface {v0}, Lcap;->e()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/twitter/util/math/Size;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcam;->b:Lcap;

    invoke-interface {v0}, Lcap;->e()Z

    move-result v0

    invoke-static {v0}, Lcam;->b(Z)Lcom/twitter/util/math/Size;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcam;->b:Lcap;

    invoke-interface {v0}, Lcap;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcam;->b:Lcap;

    invoke-interface {v0}, Lcap;->c()Z

    move-result v0

    return v0
.end method
