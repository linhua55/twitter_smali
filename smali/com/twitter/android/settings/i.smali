.class Lcom/twitter/android/settings/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/h;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/twitter/android/settings/i;->a:Lcom/twitter/android/settings/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/twitter/android/settings/i;->a:Lcom/twitter/android/settings/h;

    iget-object v0, v0, Lcom/twitter/android/settings/h;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Z)V

    .line 159
    return-void
.end method
