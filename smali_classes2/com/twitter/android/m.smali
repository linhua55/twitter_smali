.class Lcom/twitter/android/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/tj;

.field final synthetic b:Lcom/twitter/android/ActivityFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ActivityFragment;Lcom/twitter/android/tj;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/twitter/android/m;->b:Lcom/twitter/android/ActivityFragment;

    iput-object p2, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/tj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/twitter/android/m;->a:Lcom/twitter/android/tj;

    invoke-virtual {v0, p1}, Lcom/twitter/android/tj;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
