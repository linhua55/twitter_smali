.class Lcom/twitter/android/people/adapters/b;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const v0, 0x7f1305cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/people/adapters/b;->a:Landroid/widget/TextView;

    .line 37
    return-void
.end method
