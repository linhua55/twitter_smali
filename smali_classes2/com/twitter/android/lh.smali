.class Lcom/twitter/android/lh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/PhoneMTEntryFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/PhoneMTEntryFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/twitter/android/lh;->a:Lcom/twitter/android/PhoneMTEntryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/lh;->a:Lcom/twitter/android/PhoneMTEntryFragment;

    invoke-static {v0}, Lcom/twitter/android/PhoneMTEntryFragment;->a(Lcom/twitter/android/PhoneMTEntryFragment;)Landroid/widget/EditText;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 63
    iget-object v1, p0, Lcom/twitter/android/lh;->a:Lcom/twitter/android/PhoneMTEntryFragment;

    invoke-static {v1}, Lcom/twitter/android/PhoneMTEntryFragment;->b(Lcom/twitter/android/PhoneMTEntryFragment;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 65
    :cond_0
    return-void
.end method
