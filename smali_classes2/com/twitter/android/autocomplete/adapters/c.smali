.class Lcom/twitter/android/autocomplete/adapters/c;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/android/widget/DMAvatar;

.field public final b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const v0, 0x7f13029c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/DMAvatar;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/c;->a:Lcom/twitter/android/widget/DMAvatar;

    .line 149
    const v0, 0x7f13010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/autocomplete/adapters/c;->b:Landroid/widget/TextView;

    .line 150
    return-void
.end method
