.class Lcom/twitter/android/bx;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/DMActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/DMActivity;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/DMActivity;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/DMActivity;Lcom/twitter/android/bu;)V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/twitter/android/bx;-><init>(Lcom/twitter/android/DMActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 597
    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/DMActivity;

    invoke-static {v0}, Lcom/twitter/android/DMActivity;->a(Lcom/twitter/android/DMActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/DMActivity;

    invoke-static {v0}, Lcom/twitter/android/DMActivity;->a(Lcom/twitter/android/DMActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/bx;->a:Lcom/twitter/android/DMActivity;

    .line 599
    invoke-virtual {v0}, Lcom/twitter/android/DMActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f130143

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/TwitterListFragment;

    .line 600
    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/app/common/list/TwitterListFragment;->f(J)V

    .line 604
    :cond_1
    return-void
.end method
