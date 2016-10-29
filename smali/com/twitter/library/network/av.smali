.class public Lcom/twitter/library/network/av;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field protected a:Lcom/twitter/util/collection/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/r",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/network/av;->a:Lcom/twitter/util/collection/r;

    .line 906
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;[JII)I
    .locals 4

    .prologue
    .line 980
    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, p3

    .line 981
    :goto_0
    if-ge v0, v1, :cond_1

    .line 982
    aget-wide v2, p2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 983
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 984
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 981
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 987
    :cond_1
    sub-int v0, v1, p3

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/twitter/library/network/av;->a:Lcom/twitter/util/collection/r;

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/library/util/an;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[JII)I
    .locals 2

    .prologue
    .line 943
    if-eqz p2, :cond_0

    array-length v0, p2

    if-ge p3, v0, :cond_0

    if-lez p4, :cond_0

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/twitter/library/network/av;->a(Ljava/lang/StringBuilder;[JII)I

    move-result v0

    .line 946
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 954
    const-string/jumbo v0, "include_cards"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Z)V

    .line 955
    const-string/jumbo v0, "cards_platform"

    const-string/jumbo v1, "Android-12"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 921
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 917
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/twitter/library/network/av;->a:Lcom/twitter/util/collection/r;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 960
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 909
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/library/network/av;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/twitter/library/network/av;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    invoke-direct {p0}, Lcom/twitter/library/network/av;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
