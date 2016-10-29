.class public Lcom/twitter/model/timeline/at;
.super Lcom/twitter/model/timeline/ay;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/timeline/ba;
.implements Lcom/twitter/model/timeline/bc;


# instance fields
.field public final a:Lcom/twitter/model/timeline/c;


# direct methods
.method private constructor <init>(Lcom/twitter/model/timeline/av;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/ay;-><init>(Lcom/twitter/model/timeline/az;I)V

    .line 21
    iget-object v0, p1, Lcom/twitter/model/timeline/av;->a:Lcom/twitter/model/timeline/c;

    iput-object v0, p0, Lcom/twitter/model/timeline/at;->a:Lcom/twitter/model/timeline/c;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/av;ILcom/twitter/model/timeline/au;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/twitter/model/timeline/at;-><init>(Lcom/twitter/model/timeline/av;I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/model/timeline/at;->a:Lcom/twitter/model/timeline/c;

    iget-object v0, v0, Lcom/twitter/model/timeline/c;->b:[Lcom/twitter/model/core/cs;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcss;
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/model/timeline/at;->a:Lcom/twitter/model/timeline/c;

    iget-object v1, v0, Lcom/twitter/model/timeline/c;->b:[Lcom/twitter/model/core/cs;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 34
    invoke-virtual {v3}, Lcom/twitter/model/core/cs;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    iget-object v0, v3, Lcom/twitter/model/core/cs;->w:Lcss;

    .line 38
    :goto_1
    return-object v0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
