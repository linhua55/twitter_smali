.class Lcom/twitter/android/cu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;J)V
    .locals 0

    .prologue
    .line 2384
    iput-object p1, p0, Lcom/twitter/android/cu;->b:Lcom/twitter/android/DMConversationFragment;

    iput-wide p2, p0, Lcom/twitter/android/cu;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 4

    .prologue
    .line 2387
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/twitter/android/cu;->b:Lcom/twitter/android/DMConversationFragment;

    iget-wide v2, p0, Lcom/twitter/android/cu;->a:J

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/twitter/android/DMConversationFragment;->a(Lcom/twitter/android/DMConversationFragment;JZ)V

    .line 2390
    :cond_0
    return-void
.end method
