.class Lcom/twitter/android/settings/m;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/MobileNotificationsActivity;

.field private final b:J

.field private c:Z

.field private d:Lcom/twitter/library/provider/ca;

.field private e:I


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/MobileNotificationsActivity;J)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 549
    iput-wide p2, p0, Lcom/twitter/android/settings/m;->b:J

    .line 550
    return-void
.end method

.method private a(Landroid/preference/Preference;I)V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v0, :cond_0

    .line 653
    check-cast p1, Landroid/preference/ListPreference;

    .line 654
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 656
    invoke-static {p1, v0}, Lcom/twitter/library/util/an;->a(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private b(Landroid/preference/Preference;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 664
    check-cast p1, Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 665
    return-void

    .line 664
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 560
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-wide v6, p0, Lcom/twitter/android/settings/m;->b:J

    invoke-static {v0, v6, v7}, Lcom/twitter/library/platform/notifications/PushRegistration;->c(Landroid/content/Context;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/settings/m;->c:Z

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-static {v0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v0

    .line 564
    iget-wide v6, p0, Lcom/twitter/android/settings/m;->b:J

    invoke-virtual {v0, v6, v7}, Lcom/twitter/library/provider/ar;->b(J)Lcom/twitter/library/provider/ca;

    move-result-object v0

    .line 565
    new-instance v1, Lcom/twitter/library/provider/cc;

    invoke-direct {v1, v0}, Lcom/twitter/library/provider/cc;-><init>(Lcom/twitter/library/provider/ca;)V

    iget-object v5, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    .line 566
    invoke-static {v5}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Lcom/twitter/android/settings/MobileNotificationsActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v0, v0, Lcom/twitter/library/provider/ca;->a:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/cc;->a(Z)Lcom/twitter/library/provider/cc;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lcom/twitter/library/provider/cc;->a()Lcom/twitter/library/provider/ca;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    .line 568
    iget-object v0, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->m:I

    if-ne v0, v2, :cond_1

    .line 569
    sget-object v0, Lcom/twitter/library/provider/dk;->n:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/twitter/android/settings/m;->b:J

    .line 570
    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 572
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v6, p0, Lcom/twitter/android/settings/m;->b:J

    invoke-static {v1, v6, v7}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 574
    if-eqz v1, :cond_1

    .line 576
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/settings/m;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_1
    return-object v3

    :cond_2
    move v0, v4

    .line 566
    goto :goto_0

    .line 578
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/MobileNotificationsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 593
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    const-string/jumbo v4, "vibrate"

    invoke-virtual {v0, v4}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 594
    iget-object v4, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    invoke-static {v4}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(Lcom/twitter/android/settings/MobileNotificationsActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 595
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 596
    const v4, 0x7f0a0806

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 598
    :cond_1
    iget-object v4, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v5, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iput-object v5, v4, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    .line 599
    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget-boolean v4, v4, Lcom/twitter/library/provider/ca;->a:Z

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 602
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    const-string/jumbo v4, "ringtone"

    invoke-virtual {v0, v4}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 603
    iget-object v4, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget-object v4, v4, Lcom/twitter/library/provider/ca;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 606
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "ringtone"

    iget-object v4, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget-object v4, v4, Lcom/twitter/library/provider/ca;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 608
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v3, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v3, v3, Lcom/twitter/android/settings/MobileNotificationsActivity;->n:Lcom/twitter/library/provider/ca;

    iget-object v3, v3, Lcom/twitter/library/provider/ca;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->g:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    const-string/jumbo v3, "use_led"

    invoke-virtual {v0, v3}, Lcom/twitter/android/settings/MobileNotificationsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 611
    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget-boolean v3, v3, Lcom/twitter/library/provider/ca;->c:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 612
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->r:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v3, v3, Lcom/twitter/library/provider/ca;->d:I

    invoke-direct {p0, v0, v3}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    .line 613
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->m:Z

    if-eqz v0, :cond_4

    .line 614
    iget-object v0, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->l:I

    if-lez v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->G:Landroid/preference/ListPreference;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    .line 624
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->y:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v3, v3, Lcom/twitter/library/provider/ca;->n:I

    invoke-direct {p0, v0, v3}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 625
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->f:Z

    if-eqz v0, :cond_6

    .line 626
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v3, p0, Lcom/twitter/android/settings/m;->c:Z

    iput-boolean v3, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->o:Z

    .line 627
    iget-object v3, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->m:I

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    iget v1, p0, Lcom/twitter/android/settings/m;->e:I

    invoke-virtual {v3, v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->a(ZI)V

    .line 628
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->z:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->p:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 629
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->w:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->i:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 630
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->x:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->o:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 631
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->A:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->q:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 632
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->B:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->r:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 633
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->C:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->s:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 634
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->D:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->t:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 635
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->E:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->u:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 636
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->F:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->v:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 637
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->s:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->e:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    .line 638
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->t:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->f:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    .line 639
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->u:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->g:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    .line 641
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->e:I

    iput v1, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->i:I

    .line 642
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->f:I

    iput v1, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->k:I

    .line 648
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-boolean v1, p0, Lcom/twitter/android/settings/m;->c:Z

    invoke-static {v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->c(Lcom/twitter/android/settings/MobileNotificationsActivity;Z)V

    goto/16 :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v0, v0, Lcom/twitter/library/provider/ca;->h:I

    if-lez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->G:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    goto/16 :goto_1

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->G:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v2}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    goto/16 :goto_1

    .line 622
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->v:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v3, v3, Lcom/twitter/library/provider/ca;->h:I

    invoke-direct {p0, v0, v3}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 627
    goto/16 :goto_2

    .line 644
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->q:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->m:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->b(Landroid/preference/Preference;I)V

    .line 645
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->s:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->e:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    .line 646
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    iget-object v0, v0, Lcom/twitter/android/settings/MobileNotificationsActivity;->t:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/twitter/android/settings/m;->d:Lcom/twitter/library/provider/ca;

    iget v1, v1, Lcom/twitter/library/provider/ca;->f:I

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/settings/m;->a(Landroid/preference/Preference;I)V

    goto :goto_3
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 542
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/m;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 542
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/settings/m;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 554
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 555
    iget-object v0, p0, Lcom/twitter/android/settings/m;->a:Lcom/twitter/android/settings/MobileNotificationsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/settings/MobileNotificationsActivity;->b(Lcom/twitter/android/settings/MobileNotificationsActivity;Z)V

    .line 556
    return-void
.end method
