.class Lcom/twitter/android/rm;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/internal/android/widget/GroupedRowView;

.field public final b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 2283
    check-cast v0, Lcom/twitter/internal/android/widget/GroupedRowView;

    iput-object v0, p0, Lcom/twitter/android/rm;->a:Lcom/twitter/internal/android/widget/GroupedRowView;

    .line 2284
    const v0, 0x7f13010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/rm;->b:Landroid/widget/TextView;

    .line 2285
    return-void
.end method
