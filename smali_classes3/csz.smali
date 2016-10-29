.class public Lcsz;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lctb;


# direct methods
.method public constructor <init>(Lcta;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcta;->a(Lcta;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcsz;->a:Ljava/util/List;

    .line 26
    invoke-static {p1}, Lcta;->b(Lcta;)Lctb;

    move-result-object v0

    iput-object v0, p0, Lcsz;->b:Lctb;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 36
    if-ne p0, p1, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 39
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_2
    check-cast p1, Lcsz;

    .line 44
    iget-object v0, p0, Lcsz;->a:Ljava/util/List;

    iget-object v1, p1, Lcsz;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcsz;->a:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
