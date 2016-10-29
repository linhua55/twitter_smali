.class public Lcom/twitter/app/common/base/s;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/util/w;


# static fields
.field public static final a:Lcom/twitter/app/common/base/s;


# instance fields
.field private final b:Lcom/twitter/app/common/base/v;

.field private final c:Lcom/twitter/util/object/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/f",
            "<",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/support/design/widget/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/app/common/base/s;

    sget-object v1, Lcom/twitter/app/common/base/v;->b:Lcom/twitter/app/common/base/v;

    invoke-direct {v0, v1}, Lcom/twitter/app/common/base/s;-><init>(Lcom/twitter/app/common/base/v;)V

    sput-object v0, Lcom/twitter/app/common/base/s;->a:Lcom/twitter/app/common/base/s;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/app/common/base/v;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/app/common/base/s;->b:Lcom/twitter/app/common/base/v;

    .line 29
    new-instance v0, Lcom/twitter/app/common/base/t;

    invoke-direct {v0, p0}, Lcom/twitter/app/common/base/t;-><init>(Lcom/twitter/app/common/base/s;)V

    iput-object v0, p0, Lcom/twitter/app/common/base/s;->c:Lcom/twitter/util/object/f;

    .line 36
    return-void
.end method

.method private static a(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f1302d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    const v0, 0x7f130143

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    :cond_0
    if-nez v0, :cond_1

    instance-of v1, p0, Lcom/twitter/app/common/inject/InjectedFragmentActivity;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 85
    check-cast v0, Lcom/twitter/app/common/inject/InjectedFragmentActivity;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->X()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    check-cast p0, Lcom/twitter/app/common/inject/InjectedFragmentActivity;

    invoke-virtual {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->W()Lcom/twitter/app/common/inject/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/v;->aK_()Landroid/view/View;

    move-result-object v0

    .line 90
    :cond_1
    :goto_0
    return-object v0

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/twitter/app/common/base/SnackbarData;)V
    .locals 3

    .prologue
    .line 55
    invoke-static {p1}, Lcom/twitter/app/common/base/s;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot find the anchor view to show Snackbar."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/twitter/app/common/base/s;->c:Lcom/twitter/util/object/f;

    iget-object v2, p2, Lcom/twitter/app/common/base/SnackbarData;->a:Ljava/lang/String;

    invoke-interface {v1, p1, v0, v2}, Lcom/twitter/util/object/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/Snackbar;

    .line 62
    iget-object v1, p2, Lcom/twitter/app/common/base/SnackbarData;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/twitter/app/common/base/SnackbarData;->c:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p2, Lcom/twitter/app/common/base/SnackbarData;->b:Ljava/lang/String;

    new-instance v2, Lcom/twitter/app/common/base/u;

    invoke-direct {v2, p0, p1, p2}, Lcom/twitter/app/common/base/u;-><init>(Lcom/twitter/app/common/base/s;Landroid/app/Activity;Lcom/twitter/app/common/base/SnackbarData;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/app/common/base/s;->b:Lcom/twitter/app/common/base/v;

    invoke-virtual {v0, p3}, Lcom/twitter/app/common/base/v;->a(Landroid/content/Intent;)Lcom/twitter/app/common/base/SnackbarData;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/twitter/app/common/base/s;->a(Landroid/app/Activity;Lcom/twitter/app/common/base/SnackbarData;)V

    .line 52
    :cond_0
    return-void
.end method
