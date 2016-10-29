.class public Lcom/twitter/android/DiskCleanupPromptActivity;
.super Lcom/twitter/app/common/base/BaseFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 22
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f04040b

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiskCleanupPromptActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f1307b4

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiskCleanupPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    const v0, 0x7f1307b5

    invoke-virtual {p0, v0}, Lcom/twitter/android/DiskCleanupPromptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/twitter/android/DiskCleanupPromptActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/twitter/android/DiskCleanupPromptActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/DiskCleanupPromptActivity;->a:Landroid/app/AlertDialog;

    .line 62
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->onStart()V

    .line 31
    new-instance v0, Lcom/twitter/android/ef;

    invoke-direct {v0, p0}, Lcom/twitter/android/ef;-><init>(Lcom/twitter/android/DiskCleanupPromptActivity;)V

    .line 46
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a038f

    .line 47
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00df

    .line 48
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a076b

    .line 49
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DiskCleanupPromptActivity;->a:Landroid/app/AlertDialog;

    .line 52
    iget-object v0, p0, Lcom/twitter/android/DiskCleanupPromptActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 53
    return-void
.end method
