.class public Lciy;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lciw;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lciw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lciw;-><init>(Lciy;Lcix;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lciy;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lciy;->a:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lciy;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lciy;->b:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lciy;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lciy;->c:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lciy;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lciy;->d:Ljava/lang/String;

    .line 80
    return-object p0
.end method
