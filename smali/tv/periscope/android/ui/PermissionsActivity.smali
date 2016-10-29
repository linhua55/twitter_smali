.class public Ltv/periscope/android/ui/PermissionsActivity;
.super Ltv/periscope/android/ui/BaseActivity;
.source "Twttr"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/content/Intent;

.field private c:Ltv/periscope/android/ui/PermissionsSheet;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ltv/periscope/android/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ltv/periscope/android/ui/PermissionsActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->d:Landroid/widget/Button;

    sget v1, Ltv/periscope/android/library/p;->ps__permissions_btn_settings:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->d:Landroid/widget/Button;

    sget v1, Ltv/periscope/android/library/p;->ps__permissions_btn_allow:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Ltv/periscope/android/util/t;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package"

    .line 145
    invoke-virtual {p0}, Ltv/periscope/android/ui/PermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/ui/PermissionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 147
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "Permissions"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3}, Ltv/periscope/android/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 140
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Ltv/periscope/android/util/t;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    :cond_0
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsActivity;->setResult(I)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/ui/PermissionsActivity;->finish()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onAllowPermissions(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ltv/periscope/android/ui/PermissionsActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Ltv/periscope/android/ui/PermissionsActivity;->g()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->a:[Ljava/lang/String;

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Ltv/periscope/android/util/t;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->c:Ltv/periscope/android/ui/PermissionsSheet;

    invoke-virtual {v0}, Ltv/periscope/android/ui/PermissionsSheet;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->c:Ltv/periscope/android/ui/PermissionsSheet;

    invoke-virtual {v0}, Ltv/periscope/android/ui/PermissionsSheet;->c()V

    .line 154
    :cond_0
    invoke-super {p0}, Ltv/periscope/android/ui/BaseActivity;->onBackPressed()V

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Ltv/periscope/android/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Ltv/periscope/android/ui/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    const-string/jumbo v0, "layout"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 42
    const-string/jumbo v0, "permissions"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->a:[Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "start_intent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->b:Landroid/content/Intent;

    .line 44
    sget v0, Ltv/periscope/android/library/n;->ps__permissions_activity:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsActivity;->setContentView(I)V

    .line 48
    const-string/jumbo v0, "solid_background"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Ltv/periscope/android/ui/PermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Ltv/periscope/android/ui/PermissionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Ltv/periscope/android/library/i;->ps__blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    :cond_0
    const-string/jumbo v0, "full_screen"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Ltv/periscope/android/ui/PermissionsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 57
    :cond_1
    sget v0, Ltv/periscope/android/library/l;->permissions_sheet:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/PermissionsSheet;

    iput-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->c:Ltv/periscope/android/ui/PermissionsSheet;

    .line 58
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->c:Ltv/periscope/android/ui/PermissionsSheet;

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/PermissionsSheet;->setContent(I)V

    .line 59
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->c:Ltv/periscope/android/ui/PermissionsSheet;

    new-instance v1, Ltv/periscope/android/ui/a;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/a;-><init>(Ltv/periscope/android/ui/PermissionsActivity;)V

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/PermissionsSheet;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    sget v0, Ltv/periscope/android/library/l;->permissions_btn:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->d:Landroid/widget/Button;

    .line 68
    invoke-direct {p0}, Ltv/periscope/android/ui/PermissionsActivity;->e()V

    .line 70
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->c:Ltv/periscope/android/ui/PermissionsSheet;

    invoke-virtual {v0}, Ltv/periscope/android/ui/PermissionsSheet;->b()V

    .line 71
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 103
    :pswitch_0
    invoke-static {p2, p3}, Ltv/periscope/android/util/t;->a([Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Ltv/periscope/android/ui/PermissionsActivity;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    :cond_0
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/PermissionsActivity;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Ltv/periscope/android/ui/PermissionsActivity;->finish()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0}, Ltv/periscope/android/ui/PermissionsActivity;->e()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
