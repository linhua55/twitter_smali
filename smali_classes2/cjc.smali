.class public Lcjc;
.super Lcja;
.source "Twttr"


# instance fields
.field public final c:Z


# direct methods
.method private constructor <init>(Lcjb;Lcom/twitter/model/core/Tweet;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcja;-><init>(Lcjb;Lcom/twitter/model/core/Tweet;)V

    .line 13
    iput-boolean p3, p0, Lcjc;->c:Z

    .line 14
    return-void
.end method

.method public static a(Lcjb;Lcom/twitter/model/core/Tweet;Z)Lcjc;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcjc;

    invoke-direct {v0, p0, p1, p2}, Lcjc;-><init>(Lcjb;Lcom/twitter/model/core/Tweet;Z)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcjc;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->p:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcjc;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v0, v0, Lcom/twitter/model/core/Tweet;->o:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcjc;->a:Lcom/twitter/model/core/Tweet;

    iget-object v0, v0, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    return-object v0
.end method
