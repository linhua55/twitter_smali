.class public Lciw;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lciy;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v0, p1, Lciy;->a:Ljava/lang/String;

    iput-object v0, p0, Lciw;->a:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lciy;->b:Ljava/lang/String;

    iput-object v0, p0, Lciw;->b:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lciy;->c:Ljava/lang/String;

    iput-object v0, p0, Lciw;->c:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lciy;->d:Ljava/lang/String;

    iput-object v0, p0, Lciw;->d:Ljava/lang/String;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lciy;Lcix;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lciw;-><init>(Lciy;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lciw;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lciy;

    invoke-direct {v0}, Lciy;-><init>()V

    .line 30
    invoke-virtual {v0, p0}, Lciy;->a(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lciy;->b(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p2}, Lciy;->c(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p3}, Lciy;->d(Ljava/lang/String;)Lciy;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lciy;->a()Lciw;

    move-result-object v0

    .line 29
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lciw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lciw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lciw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lciw;->d:Ljava/lang/String;

    return-object v0
.end method
