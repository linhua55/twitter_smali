.class public Lcom/twitter/model/core/bf;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/bf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/model/core/bh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/bh;-><init>(Lcom/twitter/model/core/bg;)V

    sput-object v0, Lcom/twitter/model/core/bf;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/twitter/model/core/bf;->b:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Lcom/twitter/model/core/bf;->c:J

    .line 39
    iput-object p4, p0, Lcom/twitter/model/core/bf;->d:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static a(Lcom/twitter/model/core/am;)Lcom/twitter/model/core/bf;
    .locals 5

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/model/core/bf;

    iget-object v1, p0, Lcom/twitter/model/core/am;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/model/core/am;->b:J

    iget-object v4, p0, Lcom/twitter/model/core/am;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/model/core/bf;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/twitter/model/core/av;)Lcom/twitter/model/core/bf;
    .locals 5

    .prologue
    .line 28
    new-instance v0, Lcom/twitter/model/core/bf;

    iget-object v1, p0, Lcom/twitter/model/core/av;->i:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/model/core/av;->c:J

    iget-object v4, p0, Lcom/twitter/model/core/av;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/model/core/bf;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/bf;)Z
    .locals 2

    .prologue
    .line 54
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/model/core/bf;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/bf;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 49
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/twitter/model/core/bf;

    invoke-virtual {p0, p1}, Lcom/twitter/model/core/bf;->a(Lcom/twitter/model/core/bf;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/model/core/bf;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
