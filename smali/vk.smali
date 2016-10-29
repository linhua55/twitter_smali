.class public Lvk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lvj;


# instance fields
.field private final a:Lvf;

.field private final b:Lvm;


# direct methods
.method public constructor <init>(Lvf;Lvm;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lvk;->a:Lvf;

    .line 26
    iput-object p2, p0, Lvk;->b:Lvm;

    .line 27
    return-void
.end method


# virtual methods
.method public a(IIILcom/twitter/model/profile/ExtendedProfile$Visibility;)Lcom/twitter/model/profile/ExtendedProfile$Visibility;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 68
    invoke-static {}, Lvl;->a()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvk;->b:Lvm;

    .line 69
    invoke-virtual {v0}, Lvm;->c()Lcom/twitter/android/ar;

    move-result-object v0

    .line 72
    :goto_0
    iget-object v1, p0, Lvk;->a:Lvf;

    invoke-virtual {v1, v0}, Lvf;->a(Lcom/twitter/ui/widget/v;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lvk;->a:Lvf;

    invoke-virtual {v1, v0}, Lvf;->b(Lcom/twitter/ui/widget/v;)V

    .line 74
    sget-object p4, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->e:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 75
    iget-object v0, p0, Lvk;->a:Lvf;

    invoke-virtual {v0, p4}, Lvf;->b(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)V

    .line 77
    :cond_0
    return-object p4

    .line 69
    :cond_1
    iget-object v0, p0, Lvk;->b:Lvm;

    .line 70
    invoke-virtual {v0}, Lvm;->b()Lcom/twitter/android/ar;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lvk;->a:Lvf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lvf;->a(I)V

    .line 40
    return-void
.end method

.method public a(III)V
    .locals 2

    .prologue
    .line 31
    invoke-static {p1, p2, p3}, Lvl;->a(III)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lvk;->a:Lvf;

    invoke-virtual {v1, v0}, Lvf;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lvk;->a:Lvf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvf;->a(I)V

    .line 35
    return-void
.end method

.method public a(JZ)V
    .locals 7

    .prologue
    .line 44
    invoke-static {p1, p2}, Lvl;->a(J)Ljava/util/Calendar;

    move-result-object v0

    .line 45
    invoke-static {p1, p2}, Lvl;->b(J)Ljava/util/Calendar;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lvk;->a:Lvf;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lvf;->a(J)V

    .line 48
    iget-object v0, p0, Lvk;->a:Lvf;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lvf;->b(J)V

    .line 49
    iget-object v1, p0, Lvk;->a:Lvf;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lvf;->b(I)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Landroid/widget/DatePicker$OnDateChangedListener;Z)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lvk;->a:Lvf;

    const/16 v1, 0x7c6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lvf;->a(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 96
    iget-object v1, p0, Lvk;->a:Lvf;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->a:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    :goto_0
    invoke-virtual {v1, v0}, Lvf;->a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)V

    .line 98
    iget-object v0, p0, Lvk;->a:Lvf;

    sget-object v1, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->e:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    invoke-virtual {v0, v1}, Lvf;->b(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)V

    .line 99
    return-void

    .line 96
    :cond_0
    sget-object v0, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->d:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    goto :goto_0
.end method

.method public a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;Lcom/twitter/model/profile/ExtendedProfile$Visibility;IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lvk;->a:Lvf;

    invoke-virtual {v0, p1}, Lvf;->a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)V

    .line 86
    iget-object v0, p0, Lvk;->a:Lvf;

    invoke-virtual {v0, p2}, Lvf;->b(Lcom/twitter/model/profile/ExtendedProfile$Visibility;)V

    .line 87
    iget-object v0, p0, Lvk;->a:Lvf;

    add-int/lit8 v1, p4, -0x1

    invoke-virtual {v0, p3, v1, p5, p6}, Lvf;->a(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 88
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lvk;->a:Lvf;

    iget-object v1, p0, Lvk;->b:Lvm;

    .line 55
    invoke-virtual {v1}, Lvm;->a()Lcom/twitter/android/ar;

    move-result-object v1

    const v2, 0x7f0a0354

    .line 54
    invoke-virtual {v0, v1, v2}, Lvf;->a(Lcom/twitter/ui/widget/v;I)V

    .line 56
    iget-object v0, p0, Lvk;->a:Lvf;

    iget-object v1, p0, Lvk;->b:Lvm;

    .line 57
    invoke-virtual {v1}, Lvm;->b()Lcom/twitter/android/ar;

    move-result-object v1

    const v2, 0x7f0a0358

    .line 56
    invoke-virtual {v0, v1, v2}, Lvf;->b(Lcom/twitter/ui/widget/v;I)V

    .line 58
    return-void
.end method
