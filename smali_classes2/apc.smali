.class public Lapc;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lapb;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/util/collection/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/collection/v",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 175
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v0

    iput-object v0, p0, Lapc;->a:Lcom/twitter/util/collection/v;

    return-void
.end method

.method static synthetic a(Lapc;)Lcom/twitter/util/collection/v;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lapc;->a:Lcom/twitter/util/collection/v;

    return-object v0
.end method


# virtual methods
.method protected L_()V
    .locals 3

    .prologue
    .line 197
    invoke-super {p0}, Lcom/twitter/util/object/h;->L_()V

    .line 198
    iget-object v0, p0, Lapc;->a:Lcom/twitter/util/collection/v;

    const-string/jumbo v1, "display_location"

    iget-object v2, p0, Lapc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    .line 199
    return-void
.end method

.method public a(Ljava/lang/String;)Lapc;
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lapc;->b:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lapc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lapc;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lapc;->a:Lcom/twitter/util/collection/v;

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/v;->b(Ljava/util/Map;)Lcom/twitter/util/collection/v;

    .line 187
    return-object p0
.end method

.method protected aE_()Z
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Lcom/twitter/util/object/h;->aE_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapc;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

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
    .line 173
    invoke-virtual {p0}, Lapc;->e()Lapb;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lapb;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lapb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lapb;-><init>(Lapc;Laow;)V

    return-object v0
.end method
