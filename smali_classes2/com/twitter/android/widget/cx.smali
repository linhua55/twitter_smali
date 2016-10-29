.class Lcom/twitter/android/widget/cx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/twitter/android/widget/NotificationSettingsDialogFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;IJZ)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcom/twitter/android/widget/cx;->d:Lcom/twitter/android/widget/NotificationSettingsDialogFragment;

    iput p2, p0, Lcom/twitter/android/widget/cx;->a:I

    iput-wide p3, p0, Lcom/twitter/android/widget/cx;->b:J

    iput-boolean p5, p0, Lcom/twitter/android/widget/cx;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 147
    if-nez p2, :cond_2

    .line 148
    iget v0, p0, Lcom/twitter/android/widget/cx;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/twitter/android/widget/cx;->d:Lcom/twitter/android/widget/NotificationSettingsDialogFragment;

    iget-object v1, p0, Lcom/twitter/android/widget/cx;->d:Lcom/twitter/android/widget/NotificationSettingsDialogFragment;

    invoke-static {v1}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;)I

    move-result v1

    iget v2, p0, Lcom/twitter/android/widget/cx;->a:I

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;I)I

    .line 150
    iget-object v0, p0, Lcom/twitter/android/widget/cx;->d:Lcom/twitter/android/widget/NotificationSettingsDialogFragment;

    invoke-static {v0}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->b(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/client/c;->a(Landroid/content/Context;)Lcom/twitter/android/client/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/widget/cx;->b:J

    iget-object v1, p0, Lcom/twitter/android/widget/cx;->d:Lcom/twitter/android/widget/NotificationSettingsDialogFragment;

    invoke-static {v1}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/twitter/android/client/c;->a(JI)V

    .line 151
    iget-object v1, p0, Lcom/twitter/android/widget/cx;->d:Lcom/twitter/android/widget/NotificationSettingsDialogFragment;

    iget-boolean v0, p0, Lcom/twitter/android/widget/cx;->c:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "unsubscribe"

    :goto_0
    invoke-static {v1, v0}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_1
    return-void

    .line 151
    :cond_1
    const-string/jumbo v0, "subscribe"

    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/twitter/android/widget/cx;->d:Lcom/twitter/android/widget/NotificationSettingsDialogFragment;

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
