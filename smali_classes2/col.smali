.class public Lcol;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcoj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcoa;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcol;)Lcoa;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcol;->a:Lcoa;

    return-object v0
.end method

.method static synthetic b(Lcol;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcol;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected L_()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/twitter/util/object/h;->L_()V

    .line 198
    iget-object v0, p0, Lcol;->a:Lcoa;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcoc;

    invoke-direct {v0}, Lcoc;-><init>()V

    invoke-virtual {v0}, Lcoc;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoa;

    iput-object v0, p0, Lcol;->a:Lcoa;

    .line 201
    :cond_0
    return-void
.end method

.method public a(Lcoa;)Lcol;
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcol;->a:Lcoa;

    .line 186
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcol;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcol;"
        }
    .end annotation

    .prologue
    .line 191
    iput-object p1, p0, Lcol;->b:Ljava/util/Set;

    .line 192
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcol;->e()Lcoj;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcoj;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcoj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcoj;-><init>(Lcol;Lcok;)V

    return-object v0
.end method
