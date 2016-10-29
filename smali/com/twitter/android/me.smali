.class Lcom/twitter/android/me;
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
    .line 1512
    iput-object p1, p0, Lcom/twitter/android/me;->a:Lcom/twitter/android/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/twitter/android/me;->a:Lcom/twitter/android/ProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/ProfileActivity;->z:Lcom/twitter/android/nz;

    invoke-interface {v0}, Lcom/twitter/android/nz;->a()V

    .line 1516
    return-void
.end method
