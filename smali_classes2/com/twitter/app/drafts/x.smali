.class public Lcom/twitter/app/drafts/x;
.super Lcom/twitter/app/common/list/aj;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/list/aj",
        "<",
        "Lcom/twitter/app/drafts/x;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/twitter/app/common/list/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/twitter/app/drafts/x;
    .locals 1

    .prologue
    .line 166
    iput-object p1, p0, Lcom/twitter/app/drafts/x;->a:Ljava/lang/String;

    .line 167
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/drafts/x;

    return-object v0
.end method

.method public c(Z)Lcom/twitter/app/drafts/x;
    .locals 1

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/twitter/app/drafts/x;->b:Z

    .line 178
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/drafts/x;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/app/drafts/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/twitter/app/drafts/x;->b:Z

    return v0
.end method
