.class Lcom/twitter/android/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/i",
        "<",
        "Lcom/twitter/android/bt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/ActivityFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ActivityFragment;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/ActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/bt;
    .locals 11

    .prologue
    .line 443
    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/ActivityFragment;

    invoke-static {v0}, Lcom/twitter/android/ActivityFragment;->j(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v8

    .line 444
    new-instance v1, Lcom/twitter/android/u;

    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/ActivityFragment;

    .line 445
    invoke-static {v0}, Lcom/twitter/android/ActivityFragment;->k(Lcom/twitter/android/ActivityFragment;)Lcbv;

    move-result-object v0

    iget-object v0, v0, Lcbv;->t:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/ActivityFragment;

    .line 446
    invoke-static {v0}, Lcom/twitter/android/ActivityFragment;->k(Lcom/twitter/android/ActivityFragment;)Lcbv;

    move-result-object v0

    iget-object v4, v0, Lcbv;->u:[Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/ActivityFragment;

    invoke-static {v0}, Lcom/twitter/android/ActivityFragment;->k(Lcom/twitter/android/ActivityFragment;)Lcbv;

    move-result-object v0

    iget-object v5, v0, Lcbv;->s:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/ActivityFragment;

    .line 447
    invoke-static {v7}, Lcom/twitter/android/ActivityFragment;->l(Lcom/twitter/android/ActivityFragment;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/o;->a:Lcom/twitter/android/ActivityFragment;

    invoke-static {v0}, Lcom/twitter/android/ActivityFragment;->k(Lcom/twitter/android/ActivityFragment;)Lcbv;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/twitter/android/u;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JLcbv;)V

    .line 444
    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/twitter/android/o;->a()Lcom/twitter/android/bt;

    move-result-object v0

    return-object v0
.end method
