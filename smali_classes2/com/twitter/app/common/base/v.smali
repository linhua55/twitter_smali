.class public Lcom/twitter/app/common/base/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lauk;
.implements Laun;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lauk",
        "<",
        "Lcom/twitter/app/common/base/SnackbarData;",
        ">;",
        "Laun",
        "<",
        "Lcom/twitter/app/common/base/SnackbarData;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/twitter/app/common/base/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/twitter/app/common/base/v;

    invoke-direct {v0}, Lcom/twitter/app/common/base/v;-><init>()V

    sput-object v0, Lcom/twitter/app/common/base/v;->b:Lcom/twitter/app/common/base/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/twitter/app/common/base/SnackbarData;
    .locals 1

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "extra_snackbar_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/base/SnackbarData;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Lcom/twitter/app/common/base/SnackbarData;)V
    .locals 1

    .prologue
    .line 27
    if-eqz p2, :cond_0

    .line 28
    const-string/jumbo v0, "extra_snackbar_data"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p2, Lcom/twitter/app/common/base/SnackbarData;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/app/common/base/v;->a(Landroid/content/Intent;Lcom/twitter/app/common/base/SnackbarData;)V

    return-void
.end method

.method public synthetic b(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/twitter/app/common/base/v;->a(Landroid/content/Intent;)Lcom/twitter/app/common/base/SnackbarData;

    move-result-object v0

    return-object v0
.end method
