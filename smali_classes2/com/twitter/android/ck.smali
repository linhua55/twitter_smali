.class Lcom/twitter/android/ck;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/twitter/android/ck;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/twitter/android/ck;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v0}, Lcom/twitter/android/DMConversationFragment;->y(Lcom/twitter/android/DMConversationFragment;)Lcom/twitter/android/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/dl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/twitter/android/ck;->a:Lcom/twitter/android/DMConversationFragment;

    iget-object v1, p0, Lcom/twitter/android/ck;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-static {v1}, Lcom/twitter/android/DMConversationFragment;->z(Lcom/twitter/android/DMConversationFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/android/DMConversationFragment;Landroid/database/Cursor;)V

    .line 1244
    :goto_0
    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ck;->a:Lcom/twitter/android/DMConversationFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/DMConversationFragment;->d(Lcom/twitter/android/DMConversationFragment;Z)V

    goto :goto_0
.end method
