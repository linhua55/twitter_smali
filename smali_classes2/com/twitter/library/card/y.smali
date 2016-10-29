.class public Lcom/twitter/library/card/y;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/library/card/CardContext;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/library/card/CardContextDataProvider;

.field private b:Lcom/twitter/library/scribe/ScribeItemsProvider;

.field private c:Lcom/twitter/model/core/bm;

.field private d:Lcss;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/card/y;)Lcom/twitter/library/card/CardContextDataProvider;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/library/card/y;->a:Lcom/twitter/library/card/CardContextDataProvider;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/library/card/y;)Lcom/twitter/library/scribe/ScribeItemsProvider;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/library/card/y;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/library/card/y;)Lcom/twitter/model/core/bm;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/library/card/y;->c:Lcom/twitter/model/core/bm;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/library/card/y;)Lcss;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/library/card/y;->d:Lcss;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/library/card/y;)Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/twitter/library/card/y;->e:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/twitter/library/card/CardContextDataProvider;)Lcom/twitter/library/card/y;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/twitter/library/card/y;->a:Lcom/twitter/library/card/CardContextDataProvider;

    .line 199
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/ScribeItemsProvider;)Lcom/twitter/library/card/y;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/twitter/library/card/y;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    .line 205
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/bm;)Lcom/twitter/library/card/y;
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/twitter/library/card/y;->c:Lcom/twitter/model/core/bm;

    .line 211
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/library/card/y;
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/twitter/library/card/y;->d:Lcss;

    .line 217
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/card/y;
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/twitter/library/card/y;->e:Z

    .line 223
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/twitter/util/object/h;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/card/y;->a:Lcom/twitter/library/card/CardContextDataProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/card/y;->b:Lcom/twitter/library/scribe/ScribeItemsProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/twitter/library/card/y;->e()Lcom/twitter/library/card/CardContext;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/card/CardContext;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Lcom/twitter/library/card/CardContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/card/CardContext;-><init>(Lcom/twitter/library/card/y;Lcom/twitter/library/card/x;)V

    return-object v0
.end method
