.class Lcom/twitter/android/md;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/twitter/android/md;->a:Lcom/twitter/android/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/twitter/android/md;->a:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->requestLayout()V

    .line 840
    return-void
.end method
